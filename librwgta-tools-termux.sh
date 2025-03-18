#!/data/data/com.termux/files/usr/bin/dash
# LIBRWGTA tools for Termux

# Installing and updating packages
clear
pkg install build-essential binutils libuuid llvm unzip
pkg update && apt upgrade

# Cloning repositories
git clone --recursive https://github.com/aap/librw
git clone --recursive https://github.com/aap/librwgta

# Compiling Premake5
curl -Lo premake-5.0.0-beta5.zip 'https://github.com/premake/premake-core/releases/download/v5.0.0-beta5/premake-5.0.0-beta5-src.zip'
unzip -qq premake-5.0.0-beta5.zip && cd premake-5.0.0-beta5-src/build/gmake.unix
cd premake-5.0.0-beta5-src/build/gmake.unix
make
cd

# Compiling librw
cd ~/librwgta-termux/librw
cmake -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX/local-dir -DLIBRW_INSTALL:BOOL=ON . && make && make install
cp -r $PREFIX/local-dir/include/librw/* $PREFIX/include
mv $PREFIX/local-dir/include/librw $PREFIX/include
mv $PREFIX/local-dir/lib/librw*.a $PREFIX/lib
rm -rf $PREFIX/local-dir

# Compiling librwgta
rm ~/librwgta-termux/librwgta/premake5.lua
cd ~/librwgta-termux/librwgta
mv ~/librwgta-termux/premake5.lua ~/librwgta-termux/librwgta
../premake-5.0.0-beta5-src/bin/release/premake5 gmake
cd build && make config=release_linux-arm-null
cd ~ && mv librwgta-termux/librwgta/bin/linux-arm-null/Release/* $PREFIX/bin

# Removing garbages and create directories for conversions
rm -rf $PREFIX/include/librw $PREFIX/include/src $PREFIX/include/rw.h $PREFIX/include/args.h $PREFIX/lib/librw.a $PREFIX/lib/librw_skeleton.a
mkdir -p "/storage/emulated/0/gtastuff/librwgta/GTA3/out"
mkdir -p "/storage/emulated/0/gtastuff/librwgta/ViceCity/out"
mkdir -p "/storage/emulated/0/gtastuff/librwgta/SanAndreas/out"
mkdir -p "/storage/emulated/0/gtastuff/librwgta/TXDS/out"
mkdir -p "/storage/emulated/0/gtastuff/librwgta/IMG/out"
