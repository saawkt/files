@echo off
echo Enabling NVIDIA Control Panel Service

sc config NVDisplay.ContainerLocalSystem start= auto >NUL 2>&1
sc start NVDisplay.ContainerLocalSystem >NUL 2>&1