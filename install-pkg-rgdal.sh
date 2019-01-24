#!/bin/sh

REPOS="https://cloud.r-project.org"

module load gdal/2.1.3

export LD_LIBRARY_PATH=/appl/proj/5.1.0/lib:$LD_LIBRARY_PATH
export PKG_CPPFLAGS="-I/appl/proj/5.1.0/include $CPPFLAGS"
export PKG_LIBS="-Wl,-rpath=/appl/proj/5.1.0/lib -L/appl/proj/5.1.0/lib -lproj $LDFLAGS"

echo "install.packages('rgdal',repos='$REPOS')" | R --vanilla
