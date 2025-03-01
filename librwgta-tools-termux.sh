#!/data/data/com.termux/files/usr/bin/dash
# LIBRWGTA tools for Termux

clear
pkg install build-essential llvm unzip
pkg update && apt upgrade
pkg install binutils
git clone --recursive https://github.com/aap/librw
git clone --recursive https://github.com/aap/librwgta
curl -Lo premake-5.0.0-beta5.zip 'https://github.com/premake/premake-core/releases/download/v5.0.0-beta5/premake-5.0.0-beta5-src.zip'
unzip -qq premake-5.0.0-beta5.zip && cd premake-5.0.0-beta5-src/build/gmake.unix
cd premake-5.0.0-beta5-src/build/gmake.unix
make
cd
cd ~/librwgta-termux/librw
cmake -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX/local-dir -DLIBRW_INSTALL:BOOL=ON . && make && make install
cp -r $PREFIX/local-dir/include/librw/* $PREFIX/include
mv $PREFIX/local-dir/include/librw $PREFIX/include
mv $PREFIX/local-dir/lib/librw*.a $PREFIX/lib
rm -rf $PREFIX/local-dir
rm ~/librwgta-termux/librwgta/premake5.lua
cd ~/librwgta-termux/librwgta
mv ~/librwgta-termux/premake5.lua ~/librwgta-termux/librwgta
cp -r ~/librwgta-termux/premake-5.0.0-beta5-src/bin/release/* ~/librwgta-termux/librwgta
chmod +x premake5
./premake5 gmake
cd build && make config=release_linux-arm-null
cd ~ && mv librwgta-termux/librwgta/bin/linux-arm-null/Release/* $PREFIX/bin
rm -rf $PREFIX/include/librw $PREFIX/include/src $PREFIX/include/rw.h $PREFIX/include/args.h $PREFIX/lib/librw.a $PREFIX/lib/librw_skeleton.a
