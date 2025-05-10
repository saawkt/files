Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class%%i" /v "RMElcg" /t REG_DWORD /d "55555555" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class%%i" /v "RMBlcg" /t REG_DWORD /d "1111111" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class%%i" /v "RMElpg" /t REG_DWORD /d "00000fff" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class%%i" /v "RMFspg" /t REG_DWORD /d "0000000f" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class%%i" /v "RMSlcg" /t REG_DWORD /d "0003ffff" /f > nul 2>&1