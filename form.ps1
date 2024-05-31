# Add the necessary assemblies for WPF
Add-Type -AssemblyName PresentationCore,PresentationFramework,WindowsBase,System.Windows.Forms

# Create a handler for Button1 Click event
$Button1_Click = {
    # Create a new instance of the OpenFileDialog
    $openFileDialog = New-Object Microsoft.Win32.OpenFileDialog
    $openFileDialog.Filter = "Installer files (*.msi, *.exe)|*.msi;*.exe"
    $openFileDialog.Title = "Select MSI or EXE file"

    # Show the OpenFileDialog and check if OK was clicked
    if ($openFileDialog.ShowDialog() -eq $true) {
        # Get the selected filename
        $selectedFile = $openFileDialog.FileName
        
        # Extract the filename from the full path
        $selectedFilename = [System.IO.Path]::GetFileName($selectedFile)
        
        # Update the TextBox with the selected filename
        $Form1.TB_InstallFile.Text = $selectedFilename
        
        # Check if the selected file has the .msi extension
        if ($selectedFilename -match '\.msi$') {
            # If yes, update the TB_InstallParameter TextBox with the specified text
            $Form1.RTB_InstallParameter.Text = "/QN REBOOT=REALLYSUPPRESS"
        }
        
        # Optionally, you can perform actions with the selected file
        Write-Host "Selected file: $selectedFilename"
    }
}

$B_create_Intunewin_Click = {
}
Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'form.designer.ps1')
$Form1.ShowDialog()