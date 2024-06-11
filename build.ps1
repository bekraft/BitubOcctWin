vcpkg install --triplet x86-windows
New-Item -ItemType Directory -Path build/lib/x86 -Force
Copy-Item vcpkg_installed/x86-windows/lib/TK*.lib build/lib/x86
Copy-Item vcpkg_installed/x86-windows/bin/TK*.dll build/lib/x86

vcpkg install --triplet x64-windows
New-Item -ItemType Directory -Path build/lib/x64 -Force
Copy-Item vcpkg_installed/x64-windows/lib/TK*.lib build/lib/x64
Copy-Item vcpkg_installed/x64-windows/bin/TK*.dll build/lib/x64

New-Item -ItemType Directory -Path build/include -Force
Copy-Item vcpkg_installed/x64-windows/include/opencascade/*.* build/include