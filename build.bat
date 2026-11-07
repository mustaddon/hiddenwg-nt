:: 1) download and mount EWDK.iso (https://learn.microsoft.com/en-us/windows-hardware/drivers/other-wdk-downloads)
:: 2) run as admin D:\LaunchBuildEnv.cmd
:: 3) execute build.bat within this environment

@echo off

echo "%~1" | findstr /I /R "driver api" >nul
if %errorlevel%==0 (
    if "%~2"=="" (set "ARCH=x64") else (set "ARCH=%~2")
    set "PROJECT_PATH=%~dp0%~1\%~1.vcxproj"
) else (
    if "%~1"=="" (set "ARCH=%PROCESSOR_ARCHITECTURE%") else (set "ARCH=%~1")
    set "PROJECT_PATH=%~dp0wireguard-nt.sln"
)

Msbuild "%PROJECT_PATH%" /p:configuration=release /p:platform=%ARCH%