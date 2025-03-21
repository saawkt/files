@echo off
if /i "%~1"=="/disable"         goto disable
title Windows Search toggle script
cls

echo.	Press [D] to disable Windows Start Menu
echo.	Press [E] to enable Windows Start Menu (uninstall Open-Shell first)
echo.
set /p c="Enter your answer: "
if /i %c% equ D goto :disable
if /i %c% equ E goto :enable

:disable
taskkill /f /im explorer.exe
taskkill /f /im StartMenuExperienceHost.exe
cd C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy
takeown /f "StartMenuExperienceHost.exe"
icacls "C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\StartMenuExperienceHost.exe" /grant Administrators:F
ren StartMenuExperienceHost.exe StartMenuExperienceHost.old
start explorer.exe
cls
pause
exit

:enable
taskkill /f /im explorer.exe
cd C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy
takeown /f "StartMenuExperienceHost.old"
icacls "C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\StartMenuExperienceHost.old" /grant Administrators:F
ren StartMenuExperienceHost.old StartMenuExperienceHost.exe
start explorer.exe
start StartMenuExperienceHost.exe
cls
pause
exit