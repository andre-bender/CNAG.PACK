$R_REGSZ_CheckedChanged = {
}
$RTB_UninstallParameter_TextChanged = {
}
$TB_KillProcessesName_TextChanged = {
}
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
	$openFileDialog.Multiselect = $false
    $openFileDialog.ShowDialog() | Out-Null
    return $openFileDialog.FileName
}

$TB_InstallFile_TextChanged = {
}

# Erstellt eine Funktion, die eine Dialogbox zum Auswählen einer Datei anzeigt
function Select-Shortcut {
    $openFileDialog = New-Object System.Windows.Forms.OpenFileDialog
	$openFileDialog.InitialDirectory = [Environment]::GetFolderPath('Desktop')
    $openFileDialog.Filter = "Shortcut files (*.lnk)|*.lnk"
    $openFileDialog.Title = "Select a shortcut file"
	$openFileDialog.Multiselect = $false
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

$L_AllRightsReservedCNAG_Click = {
	# Open web browser with the specified URL
    Start-Process "https://www.cnag.de"
}

$L_CNAGPACK_Click = {
	# Open web browser with the specified URL
    Start-Process "https://github.com/andre-bender/CNAG.PACK"
}

$L_CNAGPACK_MouseHover = {
	$Form1.L_CNAGPACK.ForeColor = "Gold"
}

$L_CNAGPACK_MouseLeave = {
	$Form1.L_CNAGPACK.ForeColor = "White"
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
            $Form1.RTB_InstallParameter.Text = "/qn /norestart REBOOT=ReallySuppress ALLUSERS=1"
			$Form1.RTB_UninstallParameter.Text = "/qn /norestart REBOOT=ReallySuppress"

            # Disable Uninstall File Checkbox
            $Form1.TB_UninstallFile.Enabled = $false
            $Form1.TB_UninstallFile.Text = "Uninstall File isn't required for MSI Installations."

        }else{
            # Enable Uninstall File Checkbox
            $Form1.TB_UninstallFile.Enabled = $true
            $Form1.TB_UninstallFile.Text = ""   
        }

        # Optionally, you can perform actions with the selected file
        Write-Host "Selected file: $selectedFilename"
    }
}

$B_selectShortcut_Click = {
	$global:selectedShortcutFilePath = Select-Shortcut
	if (-not [string]::IsNullOrEmpty($selectedShortcutFilePath)) {
		$global:selectedShortcutFileName = [System.IO.Path]::GetFileName($selectedShortcutFilePath)
		$Form1.CB_shortcutDesktop.Enabled = $true
		$Form1.CB_shortcutStartmenu.Enabled = $true
        # Extract the filename from the full path
        #$global:selectedShortcutFile = [System.IO.Path]::GetFileName($selectedShortcutFile)
		#Write-Host "$selectedShortcutFile"
	}
}

$B_registryAdd_Click = {
	$registryAddValue = $Form1.TB_registryHKEY.Text + $Form1.TB_registryPath.Text + " | " + $Form1.TB_registryKeyName.Text + " | " + $Form1.TB_registryKeyValue.Text
	if($Form1.R_DWORD.Checked -eq $true){
		$registryAddValue += " | DWORD"
	}else{
		$registryAddValue += " | REG_SZ"	
	}
	$LB_registryKeys.Items.Add($registryAddValue)
	Write-Host "Registry Value: $registryAddValue"
}

$B_registryRemove_Click = {
	$Form1.LB_registryKeys.Items.RemoveAt($Form1.LB_registryKeys.SelectedIndex)
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
		$installParameterValue = $Form1.RTB_InstallParameter.Text
		$uninstallParameterValue = $Form1.RTB_UninstallParameter.Text
        $packageVersionValue = $Form1.TB_PackageVersion.Text
        $installFileValue = $Form1.TB_InstallFile.Text
        $uninstallFileValue = $Form1.TB_UninstallFile.Text
		$MSIGUIDValue = $Form1.TB_MSIGUID.Text
        if($Form1.CB_killProcessesName.Checked -eq $true){
			$killProcessesNameValue = $Form1.TB_KillProcessesName.Text
		}else{
			$killProcessesNameValue = ""
		}
		if($Form1.R_System.Checked -eq $true){
			$installContextValue = $true
		}else{
			$installContextValue = $false
		}
		# Collect Listbox values from registry
		$registryListValue = @()
		foreach($registryKey in $Form1.LB_registryKeys.Items){
			$registryListValue += $registryKey			
		}
		$registryListValueString = $registryListValue -join "; "
		# Combine package name and version
		$fullPackageName = "$packageNameValue $packageVersionValue"

        # Sets values
        $configContentString = @"
`$packageNameValue = "$fullPackageName"
`$installParameterValue = '$installParameterValue'
`$uninstallParameterValue = '$uninstallParameterValue'
`$installFileValue = "$installFileValue"
`$uninstallFileValue = "$uninstallFileValue"
`$killProcessesNameValue = "$killProcessesNameValue"
`$installContextValue = `$$installContextValue
`$MSIGUIDValue = "$MSIGUIDValue"
`$killProcessesNameValue = "$killProcessesNameValue"
`$registryListValueString = "$registryListValueString"
"@ 
        # Saves content to config.ps1
        $configContentString | Set-Content -Path .\config.ps1 -NoNewline
		
		# Copy install.ps1, uninstall.ps1 and config.ps1 to destination folder
		$Form1.PB_ProgressBar.Value = 0
		$Form1.L_ProgressBarTitle.Text = "Please wait while the .intunewin file is being built..."
		$Form1.PB_ProgressBar.Visible = 1
		$Form1.L_ProgressBarTitle.Visible = 1
		$Form1.L_ProgressBarOutputFolder.Visible = $false
		$Form1.L_ProgressBarOutputFolder.Text = ""
		Start-Sleep -Milliseconds 100
	<#	# START CREATING INSTALL.PS1
		$installScriptContent = @'
### CNAG Intune Win32 Standard Template
# Author: Bender, André
# Created: 28.05.2024

### LOAD CONFIG.PS1
. .\config.ps1

### Fill out the variables below
# replace with package name (Productname)
$packageName = "{0}"
# replace with installation parameter (/qn ALLUSERS=1 REBOOT=ReallySuppress)
$installParameter = ""
# replace with actual file name and ending (FileName.msi) or (FileName.exe)
$installFile = ""
# enter Process Name without file ending (e.g. Greenshot) that should be killed before installation
$killProcessName = ""
# 1 for system, 0 for user
[Bool]$installContext = "1"
# 1 for yes, 0 for no
[Bool]$editRegistry = "1"

### SET UP $installContext
# Sets Path_local for Log-Files depening on installContext
if ($installContext -eq $false){
    $Path_local = "$ENV:LOCALAPPDATA\CNAG\IntuneAppDeployments"
} else{
    $Path_local = "C:\CNAG\IntuneAppDeployments"   
}

Start-Transcript -Path "$Path_local\$PackageName-install.log" -Force
$ErrorActionPreference = 'Stop'

# Ensure the directory exists and creates it if missing
if (-not (Test-Path -Path $Path_local)) {
    New-Item -Path $Path_local -ItemType Directory -Force
}

### CHECK OS LANGUAGE AND SET MSI FILE
if((Get-WinSystemLocale).Name -like "*de-*") { 
    $installFile = "SwyxIt!German64.msi" 
    Write-Host "German system detected. Install File is $installFile" -ForegroundColor Yellow
    } 
else { 
    $installFile = "SwyxIt!EnglishUK64.msi" 
    Write-Host "English system detected. Install File is $installFile" -ForegroundColor Yellow
    }

# Ensure the installFile exists in the current directory or provide full path to the installFile
$FilePath = Join-Path -Path (Get-Location) -ChildPath $installFile

if (-not (Test-Path -Path $FilePath)) {
    Write-Host "ERROR: File $FilePath not found." -ForegroundColor Red
    Exit 1603
}

### RUNS IF $killProcessName HAS VALUE
# Check if Process is running and terminate it
if($killProcessName -ne $null){
    $processExists = Get-Process -Name "$killProcessName" -ErrorAction SilentlyContinue
    if ($processExists) {
        Write-Host "$killProcessName is running. Attempting to terminate the process..."
        try {
            Stop-Process -Name "$killProcessName" -Force -ErrorAction Stop
            Write-Host "$killProcessName process terminated successfully." -ForegroundColor Green
        } catch {
            Write-Host "ERROR: Failed to terminate $killProcessName process." -ForegroundColor Red
            Write-Host "$_"
            Exit 1603
        }
    } else {
        Write-Host "$killProcessName is not running."
    }
}

### START INSTALLATION IF .MSI
if($installFile -like "*.msi"){
    try {
        Write-Host "MSI Installer has been detected. Starting with installation..." -ForegroundColor Yellow
        $arguments = "/I `"$installFile`" $installParameter /L*v `"$Path_local\$PackageName-install-msi.log`""
        Start-Process 'msiexec.exe' -ArgumentList $arguments -Wait -NoNewWindow
        Write-Host "Installation successful." -ForegroundColor Green
    } catch {
        Write-Host "_____________________________________________________________________" -ForegroundColor Red
        Write-Host "ERROR while installing $PackageName" -ForegroundColor Red
        Write-Host "$_"
        Exit 1603
        }
    }
else{
    try {
        Write-Host "EXE Installer has been detected. Starting with installation..."
        $arguments = "$installParameter /LOG=`"$Path_local\$PackageName-install-app.log`""
        Start-Process -FilePath $FilePath -ArgumentList $arguments -Wait -NoNewWindow
        Write-Host "Installation successful." -ForegroundColor Green
    } catch {
        Write-Host "_____________________________________________________________________"
        Write-Host "ERROR while installing $PackageName" -ForegroundColor Red
        Write-Host "$_"
        Exit 1603
        }
    }

### SET REGISTRY VALUES IF $editRegistry HAS BEEN SET TO 1
if($editRegistry -eq $false){
    Write-Host "editRegistry has NOT been setup. Skipping this part..."
}else{
    try{
    Write-Host "editRegistry has been setup. Registry values will be set." -ForegroundColor Yellow
    
    $registryPath = "HKLM:\SOFTWARE\WOW6432Node\Swyx\Client Line Manager\CurrentVersion\Options"
    if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force
    }

    Set-ItemProperty -Path $registryPath -Name "AllowInboundIntercom" -Value "0" -Type DWORD -Force
    Set-ItemProperty -Path $registryPath -Name "AllowOutboundIntercom" -Value "0" -Type DWORD -Force
    Write-Host "Registry keys setup successful." -ForegroundColor Green
    }
    catch{
    Write-Host "_____________________________________________________________________"
    Write-Host "ERROR while setting registry keys" -ForegroundColor Red
    Write-Host "$_"
    Exit 1603
    }
}

Stop-Transcript
'@		

# Insert the values into the script content, before the file gets created
Write-Host "PackageNameValue ist $packageNameValue"
$installScriptContent = $installScriptContent -f $packageNameValue

# Save the content to install.ps1
$installScriptContent | Out-File -FilePath "$destinationFolder\install.ps1" -Encoding utf8 -NoNewline#>

		Copy-Item -Path ".\install.ps1" -Destination (Join-Path $destinationFolder "install.ps1")
		Start-Sleep -Milliseconds 500
		$Form1.PB_ProgressBar.Value = 15
		Copy-Item -Path ".\uninstall.ps1" -Destination (Join-Path $destinationFolder "uninstall.ps1")
		Start-Sleep -Seconds 1
		$Form1.PB_ProgressBar.Value = 30
		Copy-Item -Path ".\config.ps1" -Destination (Join-Path $destinationFolder "config.ps1")
		Start-Sleep -Seconds 1
		$Form1.PB_ProgressBar.Value = 50
		
		# Copy install file to destination folder and wait for it to complete
		Copy-Item -Path $global:selectedFilePath -Destination $destinationFolder -Force
		$destinationFile = Join-Path -Path $destinationFolder -ChildPath $selectedFileName
        $previousSize = 0
        $currentSize = (Get-Item -Path $destinationFile).Length
		Write-Host "Die Datei am Zielort ist: $destinationFile"
		
		# Wait to complete copying
        while ($previousSize -ne $currentSize) {
            Start-Sleep -Milliseconds 500
            $previousSize = $currentSize
            $currentSize = (Get-Item -Path $destinationFile).Length
			Write-Host "Actual file-size: $currentSize"
        }

		# Check if the files exist in the destination folder
		$installScriptExists = Test-Path (Join-Path $destinationFolder "install.ps1")
		$uninstallScriptExists = Test-Path (Join-Path $destinationFolder "uninstall.ps1")
		$configScriptExists = Test-Path (Join-Path $destinationFolder "config.ps1")
		$installFileExists = Test-Path (Join-Path $destinationFolder $global:selectedFileName)
		
		if ($installScriptExists -and $uninstallScriptExists -and $configScriptExists -and $installFileExists) {
			### START CREATING .INTUNEWIN FILE
		    Write-Host "Files copied successfully to $destinationFolder."
			$global:selectedFileDirectory = [System.IO.Path]::GetDirectoryName($global:selectedFilePath)
			Start-Process -FilePath ".\IntuneWinAppUtil.exe" -ArgumentList "-c `"$destinationFolder`" -s `"$global:selectedFilename`" -o `"$destinationFolder`" -q" -Wait -WindowStyle Hidden
			$intunewinFilePath = Join-Path $destinationFolder ($global:selectedFilename.Replace(".msi", "").Replace(".exe", "") + ".intunewin")
			Write-Host "Checking if $intunewinFilePath exists..."
		}
		else {
		    Write-Host "Failed to copy files to $destinationFolder."
			$Form1.PB_ProgressBar.Value = 0
			$Form1.L_ProgressBarTitle.Text = "Failed to copy files to $destinationFolder."
			}
            if (Test-Path $intunewinFilePath) {
                Write-Host "Intunewin built successfully."
                $Form1.PB_ProgressBar.Value = 100
                $Form1.L_ProgressBarTitle.Text = "The .intunewin file has been successfully built in this folder:"
				$Form1.L_ProgressBarOutputFolder.Text = "$destinationFolder"
				$Form1.L_ProgressBarOutputFolder.Visible = $true
				
				# Prompt the user to open the destination folder
			
			    $openFolderResult = [System.Windows.Forms.MessageBox]::Show("Do you want to open the destination folder?", "The .intunewin file has been successfully built.", [System.Windows.Forms.MessageBoxButtons]::YesNo)
			    
			    # Check the user's response
			    if ($openFolderResult -eq [System.Windows.Forms.DialogResult]::Yes) {
			        Invoke-Item $destinationFolder
			    }
            } else {
                Write-Host "Failed to create .intunewin file."
                $Form1.PB_ProgressBar.Value = 0
                $Form1.L_ProgressBarTitle.Text = "Failed to create .intunewin file."
				$Form1.L_ProgressBarOutputFolder.Visible = $false
				$Form1.L_ProgressBarOutputFolder.Text = ""
            }
		} 
}

$R_System_Click = {
$Form1.TB_registryHKEY.Text = "HKLM:\"
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
$Form1.TB_registryHKEY.Text = "HKCU:\"
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

$R_DWORD_Click = {
	$Form1.TB_registryKeyValue.Text = "0x12345678"
}

$R_REGSZ_Click = {
	$Form1.TB_registryKeyValue.Text = ""
}

$CB_editRegistry_CheckedChanged = {
	if($Form1.CB_editRegistry.Checked -eq $false){
		$Form1.LB_registryKeys.Enabled = $false
		$Form1.TB_registryPath.Enabled = $false
		$Form1.TB_registryKeyName.Enabled = $false
		$Form1.TB_registryKeyValue.Enabled = $false
		$Form1.TB_registryHKEY.Enabled = $false
		$Form1.B_registryAdd.Enabled = $false
		$Form1.B_registryRemove.Enabled = $false
		$Form1.R_DWORD.Enabled = $false
		$Form1.R_REGSZ.Enabled = $false

	}else{
		$Form1.LB_registryKeys.Enabled = $true
		$Form1.TB_registryPath.Enabled = $true
		$Form1.TB_registryKeyName.Enabled = $true
		$Form1.TB_registryKeyValue.Enabled = $true
		$Form1.TB_registryPath.Text = ""
		$Form1.TB_registryKeyName.Text = ""
		$Form1.TB_registryKeyValue.Text = ""
		$Form1.TB_registryHKEY.Enabled = $true
		$Form1.B_registryAdd.Enabled = $true
		$Form1.B_registryRemove.Enabled = $true
		$Form1.R_DWORD.Enabled = $true
		$Form1.R_REGSZ.Enabled = $true
	}
}

$CB_killProcessesName_CheckedChanged = {
	if($Form1.CB_killProcessesName.Checked -eq $false){
		$Form1.TB_killProcessesName.Enabled = $false
		$Form1.TB_killProcessesName.Text = ""
	}else{
		$Form1.TB_killProcessesName.Enabled = $true
		$Form1.TB_killProcessesName.Text = ""
	}
}

$B_Clipboard_Click = {
	[System.Windows.Forms.Clipboard]::SetText($Form1.TB_MSIGUID.Text)
}

Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'form.designer.ps1')
$Form1.ShowDialog()
