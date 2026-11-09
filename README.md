# HiddenWG for the NT Kernel

This repository is a [fork](https://github.com/WireGuard/wireguard-nt) that adds obfuscation to the standard [WireGuard](https://www.wireguard.com/) protocol.

## Building

General requirements:

- [Visual Studio 2022](https://visualstudio.microsoft.com/downloads/) with Windows SDK
- [Windows Driver Kit](https://docs.microsoft.com/en-us/windows-hardware/drivers/download-the-wdk)

`wireguard-nt.sln` may be opened in Visual Studio for development and building. Be sure to run `bcdedit /set testsigning on` and then reboot before to enable unsigned driver loading. The default run sequence (F5) in Visual Studio will build the example project and its dependencies.

