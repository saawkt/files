@echo off
title by sysnyxx, credits to SpotX
:: Spotify (SpotX)
set param=-v 1.2.13.661.ga588f749-4064 -confirm_spoti_recomended_over -block_update_on -confirm_uninstall_ms_spoti -adsections_off -podcasts_off

set url='https://raw.githubusercontent.com/SpotX-Official/spotx-official.github.io/main/run.ps1'
set url2='https://spotx-official.github.io/run.ps1'
set tls=[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12;

%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe ^
-Command %tls% $p='%param%'; """ & { $(try { iwr -useb %url% } catch { $p+= ' -m'; iwr -useb %url2% })} $p """" | iex

exit /b