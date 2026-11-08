:: 1) download and mount EWDK.iso (https://learn.microsoft.com/en-us/windows-hardware/drivers/other-wdk-downloads)
:: 2) run as admin D:\LaunchBuildEnv.cmd
:: 3) execute build.bat within this environment

@echo off

if "%~1"=="" (
    Msbuild "%~dp0wireguard-nt.sln" /p:configuration=release /p:platform=%PROCESSOR_ARCHITECTURE%
) else (
    Msbuild "%~dp0wireguard-nt.proj" /t:%~1 %~2
)