#!/bin/sh

VERSION=4.1.0
RVERSION=R-$VERSION
TARBALL=$RVERSION.tar.gz
GCC=gcc/9.2.0

INCLUDES="/appl/R/$VERSION/include"
LIBS=/appl/R/$VERSION/lib

## Load modules (sets MKLROOT etc)
module load intel/2017.4.196.mkl
module load $GCC

export CXXFLAGS="-I/usr/include/suitesparse/"

wget https://cloud.r-project.org/src/base/R-4/$TARBALL
tar zxf $TARBALL

## Patch R wrapper script:
head -n 3 $RVERSION/src/scripts/R.sh.in > tmp_file
echo "module -s load intel/2017.4.196.mkl 2> /dev/null" >> tmp_file
echo "module -s load $GCC geos/3.8.2 gdal/3.2.0 udunits2/2.2.26 2> /dev/null" >> tmp_file
echo >> tmp_file
tail -n +3 $RVERSION/src/scripts/R.sh.in >> tmp_file
mv tmp_file $RVERSION/src/scripts/R.sh.in

MKL="-fopenmp -m64 -I$MKLROOT/include -L$MKLROOT/lib/intel64 -lmkl_gf_lp64 -lmkl_gnu_thread -lmkl_core -lpthread -lm"

mkdir -p build

cd build
../$RVERSION/configure CXX14STD="-std=gnu++14" CXX17STD="-std=gnu++17" SAFE_FFLAGS="-g -O2 -fomit-frame-pointer -ffloat-store" CPPFLAGS="-I$INCLUDES -I/usr/include/suitesparse" CXXFLAGS="-I/usr/include/suitesparse" LDFLAGS="-L$LIBS -L/usr/local/lib64" --with-blas="$MKL" --with-lapack --with-pcre1

make
