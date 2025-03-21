@echo off
title sysnyxx
:: Discord 
curl -g -k -L -# -o "C:\Windows\Temp\discord.exe" "https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x64" >NUL 2>&1 & powershell Start-Process -FilePath "C:\Windows\Temp\discord.exe /Q" >NUL 2>&1
exit