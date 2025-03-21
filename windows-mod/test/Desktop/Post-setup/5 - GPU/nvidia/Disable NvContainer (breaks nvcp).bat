@echo off
echo Disabling NVIDIA Control Panel Service

sc config NVDisplay.ContainerLocalSystem start= disabled >NUL 2>&1
sc stop NVDisplay.ContainerLocalSystem >NUL 2>&1