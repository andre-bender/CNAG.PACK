### CNAG.APP - connecT .intunewin Packager for Win32 Apps
### Check GitHub for updates or report issues: https://github.com/andre-bender/CNAG.PACK

# Check if config.ps1 exists
if (Test-Path -Path ".\config.ps1") {
    # Load config.ps1
    Write-Host "Config.ps1 file found." -ForegroundColor Green
    . .\config.ps1

    $packageName = $packageNameValue
    $installParameter = $installParameterValue
    $uninstallParameter =$uninstallParameterValue
    $installFile = $installFileValue
    $killProcessesName = $killProcessesNameValue -split ",\s*"
    [Bool]$installContext = $installContextValue #0 (false) for user, 1 (true) for system
    [Bool]$editRegistry = $false
    $MSIGUID = $MSIGUIDValue

    Write-Host "Variables have been set." -ForegroundColor Green

} else {
    Write-Host "Config.ps1 file not found." -ForegroundColor Red
    Exit 1603
}

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

# Ensure the installFile exists in the current directory or provide full path to the installFile
$FilePath = Join-Path -Path (Get-Location) -ChildPath $installFile

if (-not (Test-Path -Path $FilePath)) {
    Write-Host "ERROR: File $FilePath not found." -ForegroundColor Red
    Exit 1603
}

### RUNS IF $killProcessName HAS VALUE
if ($killProcessesName -ne $null) {
    foreach ($ProcessName in $killProcessesName) {
        # Check if Process is running and terminate it
        $processExists = Get-Process -Name $ProcessName -ErrorAction SilentlyContinue
        if ($processExists) {
            Write-Host "$ProcessName is running. Attempting to terminate the process..."
            try {
                Stop-Process -Name $ProcessName -Force -ErrorAction Stop
                Write-Host "$ProcessName process terminated successfully." -ForegroundColor Green
            } catch {
                Write-Host "ERROR: Failed to terminate $ProcessName process." -ForegroundColor Red
                Write-Host "$_"
                Exit 1603
            }
        } else {
            Write-Host "$ProcessName is not running."
        }
    }
} else {
    Write-Host "No processes to kill specified."
}

### START INSTALLATION IF .MSI
if($installFile -like "*.msi") {
    try {
        Write-Host "MSI Installer has been detected. Starting with installation..." -ForegroundColor Yellow
        $arguments = "/I `"$installFile`" $installParameter /L*v `"$Path_local\$PackageName-install-msi.log`""
        Start-Process 'msiexec.exe' -ArgumentList $arguments -Wait -NoNewWindow
        Write-Host "Calling msiexec successful." -ForegroundColor Green
        Start-Sleep -Seconds 2
    } catch {
        Write-Host "_____________________________________________________________________" -ForegroundColor Red
        Write-Host "ERROR while installing $PackageName" -ForegroundColor Red
        Write-Host "$_"
        Exit 1603
    }
} else {
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

# Check if program (MSI) exists in registry
<#if($installContext -eq "true") {
    if (Test-Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\$MSIGUID") {
        Write-Host "Program detection successful. 64-bit Registry path exists." -ForegroundColor Green
        Write-Host "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\$MSIGUID" -ForegroundColor Green
    } elseif (Test-Path "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$MSIGUID"){
        Write-Host "Program detection successful. 32-bit Registry path exists." -ForegroundColor Green
        Write-Host "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$MSIGUID" -ForegroundColor Green
    } else {
        Write-Host "Installation failed. Registry could not be detected after msiexec has been called." -ForegroundColor Red
        Exit 1603
    }
}
else{ 
    if (Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\$MSIGUID") {
        Write-Host "Program detection successful. 64-bit or 32-bit Registry path exists." -ForegroundColor Green
        Write-Host "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\$MSIGUID" -ForegroundColor Green
    } else {
        Write-Host "Installation failed. Registry could not be detected after msiexec has been called." -ForegroundColor Red
        Write-Host "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\$MSIGUID" -ForegroundColor Red
        Exit 1603
    }
}  #>

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