@echo off
title debloat by sysnyxx
:: debloat
@REM %LOCALAPPDATA%\Discord\Update.exe >nul 2>&1
@REM rmdir /s /q "%LOCALAPPDATA%\Discord\Packages" >nul 2>&1
TASKKILL /T /F /IM Discord.exe >nul 2>&1
del /f /q %LOCALAPPDATA%\Discord\Discord_updater*, %LOCALAPPDATA%\Discord\SquirrelSetup* >nul 2>&1
@REM cd /d %LOCALAPPDATA%\Discord
@REM (echo @echo off
@REM echo start "" "%LOCALAPPDATA%\Discord\Update.exe" --processStart Discord.exe ) > StartDiscord.bat
cd /d %LOCALAPPDATA%\Discord\app* >nul 2>&1
del /f /q app.ico >nul 2>&1
del /f /q chrome*.pak >nul 2>&1
del /f /q debug.log >nul 2>&1
rmdir /s /q swiftshader >nul 2>&1
cd /d %LOCALAPPDATA%\Discord\app*\modules >nul 2>&1
for %%a in ("discord_cloudsync-1" "discord_dispatch-1" "discord_erlpack-1" "discord_game_utils-1" "discord_game_utils-2" "discord_media-1" "discord_media-2" "discord_spellcheck-1" "discord_hook-1" "discord_hook-2") do rmdir /s /q "%%~a" >nul 2>&1
cd /d %LOCALAPPDATA%\Discord\app*\modules   >nul 2>&1
for %%b in ("discord_overlay-1" "discord_overlay2-1" "discord_overlay2-2") do rmdir /s /q "%%~b"  >nul 2>&1
)
cd /d %LOCALAPPDATA%\Discord\app* >nul 2>&1
copy "locales\en-US.pak" "%LOCALAPPDATA%\Discord\" >nul 2>&1
rmdir /s /q "locales" >nul 2>&1
mkdir "locales" >nul 2>&1
move "%LOCALAPPDATA%\Discord\en-US.pak" "locales" >nul 2>&1
timeout 3 >nul 2>&1
C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul
C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul
C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul
exit /b