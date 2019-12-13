# Run this file in order to install dependencies for this project.  
# In order for this to work properly, it must be run from an instance of powershell with admin access.
# This assumes python3 is installed on the target system.

# Declare functions
function is_installed ($software) {
    $installed = $null -ne (Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* |  Where { $_.DisplayName -match $software })
    return $installed
}

function Get-ScriptDirectory {
    Split-Path -parent $PSCommandPath
}

# Save the current path
$current_path = Get-ScriptDirectory

# Self-elevate the script if required (http://www.expta.com/2017/03/how-to-self-elevate-powershell-script.html)
if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
    if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
        $CommandLine = "-File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
        Start-Process -FilePath PowerShell.exe -Verb Runas -ArgumentList $CommandLine
        Exit
    }
}

# Install Chocolately
Try {
    choco
    Write-Output "Choco installed, skipping..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
} 
Catch {
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install Python
If (-Not (is_installed("python"))) {
    choco install -y python3
    refreshenv
}
Else {
    Write-Output "Skipping Python Installation"
}

# Install Visual Studio Build Tools
choco install -y visualstudio2017buildtools

# Install Swig
choco install -y Swig

# Install pip
choco install -y pip
pip install --upgrade pip

# Install Smartcard Driver
$system_type = [intptr]::Size

If ($system_type -eq 8) {
    # If systemtype is 8, the system needs x64 drivers.
    Get-ChildItem "$current_path\smartcard_drivers\X64" -Recurse -Filter "*.inf" | ForEach-Object { PNPUtil.exe -i -a $_.FullName}
}
Else {
    # Else, the systemtype is probably 4, which means it needs x86 drivers.
    Get-ChildItem "$current_path\smartcard_drivers\X86" -Recurse -Filter "*.inf" | ForEach-Object { PNPUtil.exe -i -a $_.FullName}
}

pip install -r $current_path\requirements.txt