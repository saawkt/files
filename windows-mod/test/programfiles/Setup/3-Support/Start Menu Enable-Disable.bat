@echo off
color a
title Enable/Disable StartMenuExperienceHost.exe
:home
cls
echo ---------------------------------
echo - 1. Enable Windows Start Menu  -
echo - 2. Disable Windows Start Menu -
echo ---------------------------------
echo.
set /p stmexp=:
if %stmexp% EQU 1 goto e
if %stmexp% EQU 2 goto d
goto home

:e
cls
powershell Invoke-WebRequest -Uri "https://github.com/wasynxyxxk/files/raw/refs/heads/main/PowerRun.exe" -OutFile "C:\Windows\PowerRun.exe"
PowerRun.exe /SW:0 powershell.exe Rename-Item -Path "C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\StartMenuExperienceHost.old" -NewName "StartMenuExperienceHost.exe"
del "C:\Windows\PowerRun.exe"
echo done
pause
exit /b

:d
cls
powershell Invoke-WebRequest -Uri "https://github.com/wasynxyxxk/files/raw/refs/heads/main/PowerRun.exe" -OutFile "C:\Windows\PowerRun.exe"
PowerRun.exe /SW:0 taskkill.exe /im "StartMenuExperienceHost.exe" /t /f
PowerRun.exe /SW:0 powershell.exe Rename-Item -Path "C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\StartMenuExperienceHost.exe" -NewName "StartMenuExperienceHost.old"
del "C:\Windows\PowerRun.exe"
echo done
pause
exit /b