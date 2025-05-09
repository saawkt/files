@echo off
title NVE Auto-Installer by sysnyxx
setlocal enabledelayedexpansion

:menu
echo 1 - Aria2c (fast download)
echo 2 - Powershell (+/- download)
echo. 
set /p input=": "
if "%input%"=="1" (
    goto aria2c
) else if "%input%"=="2" (
    goto powershell
) else (
    echo invalid choice. try again.
    pause
    goto menu
)

:aria2c
echo downloading aria2c
echo.
curl -L "https://github.com/aria2/aria2/releases/download/release-1.37.0/aria2-1.37.0-win-64bit-build1.zip" -o "C:\Windows\Temp\aria2c.zip"
powershell -command "Expand-Archive -Path 'C:\Windows\Temp\aria2c.zip' -DestinationPath 'C:\Windows\Temp\aria2c'
cd /d C:\Windows\Temp\aria2c\aria2* >nul 2>&1
cls
echo downloading the mods, depending on the internet, can take between 5 and 20 minutes
echo.
aria2c -x 10 "https://drive.usercontent.google.com/download?id=1GHuDESNp-Xos92dYAe0EwrSiwa_aK1Pi&export=download&authuser=0&confirm=t&uuid=ffcc89ef-ed3a-42f6-847a-b0ce0dd07119&at=AEz70l7o09LkPhH1uW9BRGgHCM9a:1742787218530" -o "mods.zip"
powershell -command "Expand-Archive -Path 'C:\Windows\Temp\mods.zip' -DestinationPath 'C:\Windows\Temp\mods'
del /f /q C:\Windows\Temp\mods.zip >nul 2>&1
goto main

:powershell
echo downloading the mods, depending on the internet, can take between 5 and 20 minutes
echo. 
curl -L "https://drive.usercontent.google.com/download?id=1GHuDESNp-Xos92dYAe0EwrSiwa_aK1Pi&export=download&authuser=0&confirm=t&uuid=ffcc89ef-ed3a-42f6-847a-b0ce0dd07119&at=AEz70l7o09LkPhH1uW9BRGgHCM9a:1742787218530" -o "C:\Windows\Temp\mods.zip"
cls
echo wait...
powershell -command "Expand-Archive -Path 'C:\Windows\Temp\mods.zip' -DestinationPath 'C:\Windows\Temp\mods'
del /f /q C:\Windows\Temp\mods.zip >nul 2>&1

:main
cd /d %localappdata%\FiveM\FiveM.app >nul 2>&1
rmdir /s /q "mods" >nul 2>&1
mkdir "mods" >nul 2>&1
move "C:\Windows\Temp\mods\Main Package\mods\*.rpf" "%localappdata%\FiveM\FiveM.app\mods" >nul 2>&1
move "C:\Windows\Temp\mods\Main Package\plugins\NVE.asi" "%localappdata%\FiveM\FiveM.app\plugins" >nul 2>&1
move "C:\Windows\Temp\mods\Main Package\plugins\nve-shaders" "%localappdata%\FiveM\FiveM.app\plugins" >nul 2>&1

:: shaders
del /f /q %localappdata%\FiveM\FiveM.app\plugins\dxgi.dll >nul 2>&1
move "C:\Windows\Temp\mods\ReShade Shaders\dxgi.dll" "%localappdata%\FiveM\FiveM.app\plugins" >nul 2>&1
cd /d %localappdata%\FiveM\FiveM.app\plugins\reshade-shaders\Shaders\ >nul 2>&1
del /f /q %localappdata%\FiveM\FiveM.app\plugins\reshade-shaders\Shaders\ReShadeUI.fxh, %localappdata%\FiveM\FiveM.app\plugins\reshade-shaders\Shaders\ReShade.fxh, %localappdata%\FiveM\FiveM.app\plugins\reshade-shaders\Shaders\Macros.fxh, %localappdata%\FiveM\FiveM.app\plugins\reshade-shaders\Shaders\LumaSharpen.fx, %localappdata%\FiveM\FiveM.app\plugins\reshade-shaders\Shaders\FXAA.fxh, %localappdata%\FiveM\FiveM.app\plugins\reshade-shaders\Shaders\DrawText.fxh, %localappdata%\FiveM\FiveM.app\plugins\reshade-shaders\Shaders\Deband.fx, %localappdata%\FiveM\FiveM.app\plugins\reshade-shaders\Shaders\CAS.fx, %localappdata%\FiveM\FiveM.app\plugins\reshade-shaders\Shaders\Blending.fxh, %localappdata%\FiveM\FiveM.app\plugins\reshade-shaders\Shaders\TriDither.fxh, %localappdata%\FiveM\FiveM.app\plugins\reshade-shaders\Shaders\SMAA.fxh >nul 2>&1
move "C:\Windows\Temp\mods\ReShade Shaders\reshade-shaders\Shaders\*" "%localappdata%\FiveM\FiveM.app\plugins\reshade-shaders\Shaders" >nul 2>&1
move "C:\Windows\Temp\mods\ReShade Shaders\reshade-shaders\Shaders\NVE" "%localappdata%\FiveM\FiveM.app\plugins\reshade-shaders\Shaders" >nul 2>&1
del C:\Users\fghjk\AppData\Local\FiveM\FiveM.app\plugins\reshade-shaders\Textures\FontAtlas.png
del C:\Users\fghjk\AppData\Local\FiveM\FiveM.app\plugins\reshade-shaders\Textures\lut.png
move "C:\Windows\Temp\mods\ReShade Shaders\reshade-shaders\Textures\*" "%localappdata%\FiveM\FiveM.app\plugins\reshade-shaders\Textures\" >nul 2>&1
del C:\Users\fghjk\AppData\Local\FiveM\FiveM.app\plugins\ReshadeEffectShaderToggler.ini
del C:\Users\fghjk\AppData\Local\FiveM\FiveM.app\plugins\ReshadeEffectShaderToggler.addon64
del C:\Users\fghjk\AppData\Local\FiveM\FiveM.app\plugins\ReShade.ini
del C:\Users\fghjk\AppData\Local\FiveM\FiveM.app\plugins\NVE.ini
move "C:\Windows\Temp\mods\ReShade Shaders\*.ini" "%localappdata%\FiveM\FiveM.app\plugins\" >nul 2>&1
move "C:\Windows\Temp\mods\ReShade Shaders\*.addon64" "%localappdata%\FiveM\FiveM.app\plugins\" >nul 2>&1
rmdir /s /q "C:\Windows\Temp\mods" >nul 2>&1
cls

:: gta settings
curl -L "https://raw.githubusercontent.com/wasynxyxxk/files/refs/heads/main/fivem-graphics-mod/gta5_settings.xml" -o "C:\Windows\Temp\gta5_settings.xml"
del /f /q %appdata%\CitizenFX\gta5_settings.xml >nul 2>&1
move "C:\Windows\Temp\gta5_settings.xml" "%appdata%\CitizenFX" >nul 2>&1
echo done
pause
exit /b





