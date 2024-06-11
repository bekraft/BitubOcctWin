# Bitub OCCT Redistribution Builder

Open Cascade (Occt) binary NuGet package builder. Builds and packages Occt as x86 and x64 prebuilt binaries
and headers files into a single nuget package.

See https://github.com/Open-Cascade-SAS/OCCT.

## Contents

- packages Occt libraries into `lib/native/`
- copies header files into `build/native/include`

## Build Nuget package

Builds Occt binaries with vcpkg from https://vcpkg.link/ports/opencascade. Either uses vcpkg shipped with Visual Studio (if installed during installation) or a manually installed vcpkg toolchain. See https://github.com/microsoft/vcpkg.

Run
```bash
./build.cmd
nuget pack .\Bitub.Occt.Win10.nuspec 
```

## Add prebuilt Nuget package to VC project

Within the consuming project create a file `package.config`:
```xml
<?xml version="1.0" encoding="utf-8"?>
<packages>
  <package id="Bitub.Occt.Win10" version="7.7.2" targetFramework="native" />
</packages>
```

Add an additional `ImportGroup` to the consumer project configuration:
```xml 
  <ImportGroup Label="OcctLibraries">
    <Import Project="..\packages\Bitub.Occt.Win10.7.7.2\build\Bitub.Occt.Win10.targets" />
  </ImportGroup>
```

Let the entire solution being reloaded.