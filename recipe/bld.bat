setlocal EnableDelayedExpansion

mkdir build

cd build

cmake -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX="%PREFIX" ..
if errorlevel 1 exit 1

mingw32-make -j %CPU_COUNT%
if errorlevel 1 exit 1

mingw32-make install
if errorlevel 1 exit 1