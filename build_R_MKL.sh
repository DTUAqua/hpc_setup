#!/bin/sh

VERSION=3.5.0
RVERSION=R-$VERSION
TARBALL=$RVERSION.tar.gz

INCLUDES=/appl/R/$VERSION/include
LIBS=/appl/R/$VERSION/lib

## Load modules (sets MKLROOT etc)
module load intel/2018.3.051.mkl
## module load gcc/8.2.0

wget https://cloud.r-project.org/src/base/R-3/$TARBALL
tar zxf $TARBALL

## Patch R wrapper script:
head -n 3 $RVERSION/src/scripts/R.sh.in > tmp_file
echo "module load intel/2018.3.051.mkl" >> tmp_file
echo "module load gcc/8.2.0" >> tmp_file
echo >> tmp_file
tail -n +3 $RVERSION/src/scripts/R.sh.in >> tmp_file
mv tmp_file $RVERSION/src/scripts/R.sh.in

MKL="-fopenmp -m64 -I$MKLROOT/include -L$MKLROOT/lib/intel64 -lmkl_gf_lp64 -lmkl_gnu_thread -lmkl_core -lpthread -lm"

mkdir -p build

cd build
../$RVERSION/configure CPPFLAGS="-I$INCLUDES -I/usr/local/include" LDFLAGS="-L$LIBS -L/usr/local/lib64" --with-blas="$MKL" --with-lapack

make clean
make
