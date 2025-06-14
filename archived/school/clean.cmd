@echo off
certutil -URLCache * delete 
netsh int ip reset 
netsh int ipv4 reset 
netsh int ipv6 reset 
ipconfig / >nul
ipconfig /release >nul
ipconfig /renew >nul
ipconfig /flushdns >nul
cls
netsh advfirewall reset
netsh winsock reset
netsh int ip reset
cls
netsh winsock reset 
netsh advfirewall reset
cls
sc stop eventlog
for /f "tokens=*" %%a in ('wevtutil el') do (
    echo %%a
    wevtutil cl "%%a"
)
cls
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\HardwareID /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\Store /f
cls
REG DELETE HKEY_CURRENT_USER\Software\WinRAR\ArcHistory /f
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-1282084573-1681065996-3115981261-1001 /va /f
REG DELETEH KEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView /f
REG DELETEH KEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\WinRAR\ArcHistory /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
REG DELETE HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
cls
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView /f
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-332004695-2829936588-140372829-1002 /f
REG DELETE HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-1282084573-1681065996-3115981261-1001 /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
fsutil usn deletejournal /d a:
fsutil usn deletejournal /d b:
fsutil usn deletejournal /d c:
fsutil usn deletejournal /d d:
fsutil usn deletejournal /d e:
fsutil usn deletejournal /d f:
fsutil usn deletejournal /d g:
fsutil usn deletejournal /d h:
fsutil usn deletejournal /d i:
fsutil usn deletejournal /d j:
fsutil usn deletejournal /d k:
fsutil usn deletejournal /d l:
fsutil usn deletejournal /d m:
fsutil usn deletejournal /d n:
cls
fsutil usn deletejournal /d o:
fsutil usn deletejournal /d p:
fsutil usn deletejournal /d q:
fsutil usn deletejournal /d r:
fsutil usn deletejournal /d s:
fsutil usn deletejournal /d t:
fsutil usn deletejournal /d u:
fsutil usn deletejournal /d v:
fsutil usn deletejournal /d w:
fsutil usn deletejournal /d x:
fsutil usn deletejournal /d y:
fsutil usn deletejournal /d z:
cls
del /s /f /q "%USERPROFILE%\Local Settings\History"\*.*    
rd /s /q "%USERPROFILE%\Local Settings\History"    
md "%USERPROFILE%\Local Settings\History"    
del /s /f /q "%USERPROFILE%\Local Settings\Temporary Internet Files"\*.*    
rd /s /q "%USERPROFILE%\Local Settings\Temporary Internet Files"    
md "%USERPROFILE%\Local Settings\Temporary Internet Files"    
del /s /f /q "%USERPROFILE%\Local Settings\Temp"\*.*    
rd /s /q "%USERPROFILE%\Local Settings\Temp"    
md "%USERPROFILE%\Local Settings\Temp"  
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\WebCache\*.log /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\SettingSync\*.log /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.tmp /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\"Terminal Server Client"\Cache\*.bin /s /q
rmdir /q /s C:\Users\pugazx\AppData\Local\Microsoft\Windows\INetCache\
del /f /s /q "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCache\IE\SPOWNEL5"
del /f /s /q "C:\Users\\AppData\LocalLow\Microsoft\CryptnetFlushCache\MetaData"
del /f /s /q "C:\Users\\%USERNAME%\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content"
del /f /s /q "C:\Users\\%USERNAME%\AppData\LocalLow\Microsoft\CryptnetFlushCache\*.*"
del /f /s /q "C:\Users\\%USERNAME%\AppData\LocalLow\Microsoft\CryptnetFlushCache""
cls
del /f /s /q "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCache"
del /s /f /q "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCache\IE\Q4QUJWYI"
rmdir /s /q "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCache\IE\Q4QUJWYI"
del /f /s /q "C:\ProgramData\Microsoft\Windows\WER\Temp
del /f /s /q "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\\0\1\2\0\0\0\0\0\0\0"
del /f /s /q "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache"
del /f /s /q C:\ProgramData\Microsoft\Windows\WER\ReportArchive
rmdir /s /q C:\ProgramData\Microsoft\Windows\WER\ReportArchive
wevtutil cl System
wevtutil cl Application
wevtutil cl Securit
ipconfig /flushdns
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16384
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
del "%HOMEPATH%\AppData\Local\updater.log" >nul 2>&1
del "%HOMEPATH%\AppData\Local\UserProducts.xml" >nul 2>&1
del "%SYSTEMROOT%\Logs\DirectX.log" >nul 2>&1
del "%SYSTEMROOT%\DirectX.log" >nul 2>&1
del "%SYSTEMROOT%\DtcInstall.log" >nul 2>&1
del "%SYSTEMROOT%\lsasetup.log" >nul 2>&1
cls
del "%SYSTEMROOT%\setupact.log" >nul 2>&1
del "%SYSTEMROOT%\setuperr.log" >nul 2>&1
del "%SYSTEMROOT%\WindowsUpdate.log" >nul 2>&1
del /q /f /s %TEMP%\ >nul 2>&1
del /q/f/s %SYSTEMROOT%\Logs\* >nul 2>&1
del /q/f/s %SYSTEMROOT%\Temp\* >nul 2>&1
del /q/f/s %SYSTEMROOT%\SoftwareDistribution\* >nul 2>&1
del /s /f /q %windir%\temp\*.* >NUL 2>&1
rd /s /q %windir%\temp >NUL 2>&1
md %windir%\temp >NUL 2>&1
del /s /f /q %temp%\*.* >NUL 2>&1
rd /s /q %temp% >NUL 2>&1
md %temp% >NUL 2>&1
rd /s /q %localappdata%\Google >NUL 2>&1
del /s /f /q %windir%\*.log >NUL 2>&1
for %%F in ("C:\Windows\SoftwareDistribution\Download\*") do (
    del "%%F" /q /f >NUL 2>&1
    rd "%%F" /s /q >NUL 2>&1
) >NUL 2>&1
cls
for %%A in ("%localappdata%\Microsoft\Windows\INetCache\IE\*") do (
    del "%%A" /q /f >NUL 2>&1
    rd "%%A" /s /q >NUL 2>&1
) >NUL 2>&1
sc start eventlog
powershell Clear-RecycleBin -Force >NUL 2>&1
taskkill /f /im dwm.exe
taskkill /f /im explorer.exe
start explorer.exe
start /b "" cmd /c del "%~f0"&exit /b