set -euo pipefail
set -x

# Apply patch
git apply 001-fix_cmakelist.patch

mkdir -p build

cd build

cmake ${CMAKE_ARGS} -DCMAKE_CXX_STANDARD=11 -DCMAKE_INSTALL_PREFIX=${PREFIX} -DUSE_TR1=false ../
make -j${CPU_COUNT}
make install