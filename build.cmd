vcpkg install --triplet x86-windows
mkdir -p build/lib/x86
cp vcpkg_installed/x86-windows/lib/TK*.lib build/lib/x86
cp vcpkg_installed/x86-windows/bin/TK*.dll build/lib/x86

vcpkg install --triplet x64-windows
mkdir -p build/lib/x64
cp vcpkg_installed/x64-windows/lib/TK*.lib build/lib/x64
cp vcpkg_installed/x64-windows/bin/TK*.dll build/lib/x64

mkdir -p build/include
cp vcpkg_installed/x64-windows/include/opencascade/*.* build/include