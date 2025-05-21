@echo off
echo PC basic software 1.8 -  made by internettools.org
echo This script will install:
echo - Discord
echo - Visual Studio Code
echo - Google Chrome
echo - Git
echo - PowerToys
echo - Spotify
echo - Winfetch
echo - 7zip
echo - Notepad++
echo - VLC
echo - Chocolatey
echo press any key to continue...
pause
echo Installing apps via winget...

:: Install applications using winget
winget install --id=Discord.Discord -e --accept-package-agreements --accept-source-agreements
echo Installing Discord...
winget install --id=Microsoft.VisualStudioCode -e --accept-package-agreements --accept-source-agreements
echo Installing Visual Studio Code...
winget install --id=Google.Chrome -e --accept-package-agreements --accept-source-agreements
echo Installing Google Chrome...
winget install --id=Git.Git -e --accept-package-agreements --accept-source-agreements
echo Installing Git...
winget install --id=Microsoft.PowerToys -e --accept-package-agreements --accept-source-agreements
echo Installing PowerToys...
winget install --id=Spotify.Spotify -e --accept-package-agreements --accept-source-agreements
echo Installing Spotify...

echo Installing Chocolatey...
:: Install Chocolatey via PowerShell
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
"Set-ExecutionPolicy Bypass -Scope Process -Force; ^
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; ^
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"

:: Refresh environment variables (optional: might need a restart)
echo Installing winfetch
choco install winfetch -y
echo Installing 7zip
choco install 7zip -y
echo Installing Notepad++
choco install notepadplusplus -y
echo Installing VLC
choco install vlc -y


echo All done!
pause
