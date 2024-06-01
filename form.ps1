$Form1_Load = {
}
# Add the necessary assemblies for WPF
Add-Type -AssemblyName PresentationCore,PresentationFramework,WindowsBase,System.Windows.Forms
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Erstellt eine Funktion, die eine Dialogbox zum Auswählen einer Datei anzeigt
function Select-MSIFile {
    $openFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $openFileDialog.Filter = "Installer files (*.msi, *.exe)|*.msi;*.exe"
    $openFileDialog.Title = "Select MSI or EXE file"
    $openFileDialog.ShowDialog() | Out-Null
    return $openFileDialog.FileName
}

# Funktion zum Extrahieren der Version, des Namens und der GUID aus der MSI-Datei
function Get-MSIInfo {
    param(
        [string]$filePath
    )

    $msi = New-Object -ComObject WindowsInstaller.Installer
    $database = $msi.GetType().InvokeMember('OpenDatabase', 'InvokeMethod', $null, $msi, @($filePath, 0))

    $query = "SELECT Value FROM Property WHERE Property = 'ProductVersion'"
    $view = $database.GetType().InvokeMember('OpenView', 'InvokeMethod', $null, $database, ($query))
    $view.GetType().InvokeMember('Execute', 'InvokeMethod', $null, $view, $null)
    $record = $view.GetType().InvokeMember('Fetch', 'InvokeMethod', $null, $view, $null)
    $version = $record.GetType().InvokeMember('StringData', 'GetProperty', $null, $record, 1)

    $query = "SELECT Value FROM Property WHERE Property = 'ProductName'"
    $view = $database.GetType().InvokeMember('OpenView', 'InvokeMethod', $null, $database, ($query))
    $view.GetType().InvokeMember('Execute', 'InvokeMethod', $null, $view, $null)
    $record = $view.GetType().InvokeMember('Fetch', 'InvokeMethod', $null, $view, $null)
    $name = $record.GetType().InvokeMember('StringData', 'GetProperty', $null, $record, 1)

    $query = "SELECT Value FROM Property WHERE Property = 'ProductCode'"
    $view = $database.GetType().InvokeMember('OpenView', 'InvokeMethod', $null, $database, ($query))
    $view.GetType().InvokeMember('Execute', 'InvokeMethod', $null, $view, $null)
    $record = $view.GetType().InvokeMember('Fetch', 'InvokeMethod', $null, $view, $null)
    $guid = $record.GetType().InvokeMember('StringData', 'GetProperty', $null, $record, 1)

    # Freigabe des COM-Objekts
    [System.Runtime.Interopservices.Marshal]::ReleaseComObject($database) | Out-Null

    [PSCustomObject]@{
        Version = $version
        Name = $name
        GUID = $guid
    }
}

# Create a handler for Button1 Click event
$B_selectFile_Click = {
    # GUI für Dateiauswahl anzeigen
    $global:selectedFilePath = Select-MSIFile

    if (-not [string]::IsNullOrEmpty($selectedFilePath)) {
        # Extract the filename from the full path
        $global:selectedFilename = [System.IO.Path]::GetFileName($selectedFilePath)
        
        # Update the TextBox with the selected filename
        $Form1.TB_InstallFile.Text = $global:selectedFilename

        # Check if the selected file has the .msi extension
        if ($global:selectedFilename -match '\.msi$') {
            # Get MSI information if the file is an MSI
            $msiInfo = Get-MSIInfo -filePath $global:selectedFilePath

            # Anzeige der Informationen in der Konsole
            Write-Host "Version: $($msiInfo.Version)"
            Write-Host "Name: $($msiInfo.Name)"
            Write-Host "GUID: $($msiInfo.GUID)"
            
            # Update the fields with the extracted information
            $Form1.TB_PackageVersion.Text = $msiInfo.Version
            $Form1.TB_PackageName.Text = $msiInfo.Name
            $Form1.TB_MSIGuid.Text = $msiInfo.GUID

            # Update the RTB_InstallParameter TextBox with the specified text
            $Form1.RTB_InstallParameter.Text = "/qn /norestart REBOOT=ReallySuppress"
        }

        # Optionally, you can perform actions with the selected file
        Write-Host "Selected file: $selectedFilename"
    }
}

$B_create_Intunewin_Click = {
    # Prompt user to select destination folder using SaveFileDialog
    $folderBrowser = New-Object System.Windows.Forms.SaveFileDialog
    $folderBrowser.Filter = "Folders|*.none"
    $folderBrowser.Title = "Select Destination Folder"
    $folderBrowser.CheckFileExists = $false
    $folderBrowser.FileName = "Select Folder"
    
    # Open the folder selection dialog
    $result = $folderBrowser.ShowDialog()
    
    # Check if the user selected a folder
    if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
        $destinationFolder = Split-Path $folderBrowser.FileName
		
        # Collect values that have been set
        $packageNameValue = $Form1.TB_PackageName.Text
        $packageVersionValue = $Form1.TB_PackageVersion.Text
        $installFileValue = $Form1.TB_InstallFile.Text
        $killProcessNameValue = $Form1.TB_KillProcessName.Text
        $installContextValue = $Form1.R_System.Checked
        #$editRegistryValue = $Form1.TB_InstallFile.Text
        #$editRegistryValue = ZUKÜNFTIG

        # Sets values
        $configContentString = @"
        `$packageName = "$packageNameValue"
        `$packageVersion = "$packageVersionValue"
        `$installFile = "$installFileValue"
        `$killProcessName = "$killProcessNameValue"
        `$installContext = "$installContextValue"
"@ 
        # Saves content to config.ps1
        $configContentString | Set-Content -Path .\config.ps1 -NoNewline
		
		# Copy install.ps1, uninstall.ps1 and config.ps1 to destination folder
		$Form1.PB_ProgressBar.Value = 0
		$Form1.PB_ProgressBar.Visible = 1
		$Form1.L_ProgressBarTitle.Visible = 1
		Copy-Item -Path ".\install.ps1" -Destination (Join-Path $destinationFolder "install.ps1")
		Start-Sleep -Milliseconds 500
		$Form1.PB_ProgressBar.Value = 25
		Copy-Item -Path ".\uninstall.ps1" -Destination (Join-Path $destinationFolder "uninstall.ps1")
		Start-Sleep -Seconds 1
		$Form1.PB_ProgressBar.Value = 50
		Copy-Item -Path ".\config.ps1" -Destination (Join-Path $destinationFolder "config.ps1")
		Start-Sleep -Seconds 1
		$Form1.PB_ProgressBar.Value = 75
		
		# Copy install file to destination folder
        Copy-Item -Path $global:selectedFilePath -Destination $destinationFolder
		
		# Check if the files exist in the destination folder
		Start-Sleep 5
		$installScriptExists = Test-Path (Join-Path $destinationFolder "install.ps1")
		$uninstallScriptExists = Test-Path (Join-Path $destinationFolder "uninstall.ps1")
		$configScriptExists = Test-Path (Join-Path $destinationFolder "config.ps1")
		$installFileExists = Test-Path (Join-Path $destinationFolder $global:selectedFileName)
		
		if ($installScriptExists -and $uninstallScriptExists -and $configScriptExists -and $installFileExists) {
		    Write-Host "Files copied successfully to $destinationFolder."
			$Form1.PB_ProgressBar.Value = 100
			$Form1.L_ProgressBarTitle.Text = "The .intunewin file has been successfully built in this folder:"
		} else {
		    Write-Host "Failed to copy files to $destinationFolder."
			$Form1.PB_ProgressBar.Value = 0
			$Form1.L_ProgressBarTitle.Text = "Failed to copy files to $destinationFolder."
		}

		
	}
}

$R_System_Click = {
    if ($Form1.TB_installFile.Text -match '\.msi$') {
        # Retrieve the current text
        $currentText = $Form1.RTB_InstallParameter.Text

        if ($R_System.Checked -eq $true) {
            # Add "ALLUSERS=1" if it's not already in the text
            if ($currentText -notmatch "ALLUSERS=1") {
                $currentText += " ALLUSERS=1"
            }
        } else {
            # Remove "ALLUSERS=1" if it's in the text
            $currentText = $currentText -replace "\s*ALLUSERS=1", ""
        }
		# Update the RichTextBox with the modified text
        $Form1.RTB_InstallParameter.Text = $currentText.Trim()
    }
}

$R_User_Click = {
    if ($Form1.TB_installFile.Text -match '\.msi$') {
        # Retrieve the current text
        $currentText = $Form1.RTB_InstallParameter.Text

        if ($R_User.Checked -eq $true) {
		    # Remove "ALLUSERS=1" if it's in the text
            $currentText = $currentText -replace "\s*ALLUSERS=1", ""
            }
		# Update the RichTextBox with the modified text
        $Form1.RTB_InstallParameter.Text = $currentText.Trim()
        }
}

$CB_editRegistry_CheckedChanged = {
	if($Form1.CB_editRegistry.Checked -eq $false){
		$Form1.TB_editRegistry.Enabled = $false
		$Form1.TB_editRegistry.Text = ""
	}else{
		$Form1.TB_editRegistry.Enabled = $true
	}
}

$CB_killProcessesName_CheckedChanged = {
	if($Form1.CB_killProcessesName.Checked -eq $false){
		$Form1.TB_killProcessesName.Enabled = $false
		$Form1.TB_killProcessesName.Text = ""
	}else{
		$Form1.TB_killProcessesName.Enabled = $true
	}
}

Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'form.designer.ps1')
$Form1.ShowDialog()