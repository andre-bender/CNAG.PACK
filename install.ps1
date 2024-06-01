### CNAG Intune Win32 Standard Template
# Author: Bender, André
# Created: 28.05.2024

### LOAD CONFIG.PS1
. .\config.ps1

### Fill out the variables below
# replace with package name (Productname)
$packageName = "$($config.packageName) $($config.packageVersion)"
# replace with installation parameter (/qn ALLUSERS=1 REBOOT=ReallySuppress)
$installParameter = $config.installParameter
# replace with actual file name and ending (FileName.msi) or (FileName.exe)
$installFile = $config.installFile
# enter Process Name without file ending (e.g. Greenshot) that should be killed before installation
$killProcessName = $config.killProcessName
# 1 for system, 0 for user
[Bool]$installContext = $config.installContext
# 1 for yes, 0 for no
[Bool]$editRegistry = $config.editRegistry

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