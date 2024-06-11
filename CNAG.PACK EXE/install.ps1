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
    $registryList = $registryListValueString
    $MSIGUID = $MSIGUIDValue
    $shortcutFile = $shortcutFileValue
    [Bool]$shortcutDesktop = $shortcutDesktopValue
    [Bool]$shortcutStartmenu = $shortcutStartmenuValue

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
        if(Test-Path -Path "C:\Program Files (x86)\Sophos\Connect\import\sophos.pro"){
            Write-Host "Die Datei sophos.pro existiert"
        }else{
            Write-Host "Die Datei sophos.pro existiert nicht"
        }

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

### SET REGISTRY VALUES
if ([string]::IsNullOrWhiteSpace($registryList)) {
    Write-Host "No registry values set. Skipping..." -ForegroundColor Yellow 
}
else{
    try {
        $registryKeys = $registryList -split "; "
        foreach ($registryKey in $registryKeys) {
            $parts = $registryKey -split '\| '
            $registryPath = $parts[0].Trim()
            $registryName = $parts[1].Trim()
            $registryValue = $parts[2].Trim()
            $registryType = $parts[3]    
            # Create the registry path if it doesn't exist
            if (-not (Test-Path $registryPath)) {
                New-Item -Path $registryPath -Force | Out-Null
            }
    
            if($registryType -eq "REG_SZ"){
                Set-ItemProperty -Path "$registryPath" -Name "$registryName" -Value "$registryValue" -Force
                Write-Host "Registry key '$registryPath\$registryName\$registryValue' has been set up successful as '$registryType'" -ForegroundColor Green
            }elseif($registryType -eq "DWORD"){
                if ($registryValue -match '^0x[0-9A-Fa-f]{8}$') {
                    Set-ItemProperty -Path "$registryPath" -Name "$registryName" -Value "$registryValue" -Type $registryType -Force
                    Write-Host "Registry key '$registryPath\$registryName\$registryValue' has been set up successful as '$registryType'" -ForegroundColor Green
                }else{
                    Write-Host "ERROR: The DWORD value '$registryValue' is not in hexadecimal format." -ForegroundColor Red
                }
            }
        }  
    }
    catch {
        Write-Host "_____________________________________________________________________"
        Write-Host "ERROR while setting registry keys" -ForegroundColor Red
        Write-Host "$_"
        Exit 1603
    }
}

### SET SHORTCUT IF FILE EXISTS
if([string]::IsNullOrWhiteSpace($shortcutFile) -and ($shortcutDesktop -eq $false -or $shortcutStartmenu -eq $false)){
    Write-Host "No shortcut file set. Skipping..." -ForegroundColor Yellow
}
else{
        try {
        if($installContext -eq $true){
            # Check if shortcutDesktop is true, then set startmenu shortcut
            if($shortcutDesktop-eq $true){
                # Copy file to public desktop if installContext = SYSTEM
                $publicDesktop = [Environment]::GetFolderPath("CommonDesktopDirectory")
                Copy-Item -Path ".\$shortcutFile" -Destination "$publicDesktop" -Force
                Write-Host "Desktop Shortcut has been saved in $publicDesktop" -ForegroundColor Green
            }
            # Check if shortcutStartmenu is true, then set startmenu shortcut
            if($shortcutStartmenu -eq $true){
                $allUsersStartMenu = [Environment]::GetFolderPath("CommonStartMenu")
                Copy-Item -Path ".\$shortcutFile" -Destination "$allUsersStartMenu" -Force
                Write-Host "Startmenu Shortcut has been saved in $publicDesktop" -ForegroundColor Green 
            }
        }else{
            # Copy file to user desktop if installContext = USER
            #$currentDesktop = [Environment]::GetFolderPath("Desktop")
            #Copy-Item -Path ".\$shortcutFile" -Destination "$currentDesktop" -Force
            #Write-Host "Shortcut has been saved in $currentDesktop" -ForegroundColor Green
        }
    }
    catch {
        Write-Host "_____________________________________________________________________"
        Write-Host "Couldn't set shortcut file." -ForegroundColor Red
        Write-Host "$_"
        Exit 1603  
    }
}

Stop-Transcript