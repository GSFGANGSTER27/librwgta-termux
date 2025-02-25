#!/data/data/com.termux/files/usr/bin/dash
# LIBRWGTA tools for Termux

# Preparing and installing necessary tools for Termux
clear
pkg install build-essential unzip
cd
mkdir ~/librwgta-termux
cd ~/librwgta-termux
pkg update && apt upgrade
pkg install ar
git clone --recursive https://github.com/aap/librw
git clone --recursive https://github.com/aap/librwgta
curl -Lo premake-5.0.0-beta5.zip 'https://github.com/premake/premake-core/releases/download/v5.0.0-beta5/premake-5.0.0-beta5-src.zip'
unzip -qq premake-5.0.0-beta5.zip && cd premake-5.0.0-beta5-src/build/gmake.unix
make && cd -
clear

# Building librw
cd librw
cmake -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX/local-dir -DLIBRW_INSTALL:BOOL=ON . && make && make install
cp -r $PREFIX/local-dir/include/librw/* $PREFIX/include
mv $PREFIX/local-dir/include/librw $PREFIX/include
mv $PREFIX/local-dir/lib/librw*.a $PREFIX/lib
rm -rf $PREFIX/local-dir

# Building librwgta
cd ~/librwgta-termux/librwgta
rm 'premake5.lua' # Fixing "StaticRuntime" error
mv ~/librwgta-termux/premake5.lua ~/librwgta-termux/librwgta
../premake-5.0.0-beta5-src/bin/linux-arm-null/Release/premake5 gmake
cd build && make config=release_linux-arm-null
cd ~ && mv librwgta-termux/librwgta/bin/linux-arm-null/Release/* $PREFIX/bin

# Removing garbages (i guess)
rm -rf $PREFIX/include/librw $PREFIX/include/src $PREFIX/include/rw.h $PREFIX/include/args.h $PREFIX/lib/librw.a $PREFIX/lib/librw_skeleton.a