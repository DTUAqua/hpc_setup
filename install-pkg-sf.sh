#!/bin/sh

REPOS="https://cloud.r-project.org"

module load gdal/3.2.0

##export LD_LIBRARY_PATH=/appl/proj/4.9.3/lib:$LD_LIBRARY_PATH
##export PKG_CPPFLAGS="-I/appl/proj/4.9.3/include $CPPFLAGS"
##export PKG_LIBS="-Wl,-rpath=/appl/proj/4.9.3/lib -L/appl/proj/4.9.3/lib -lproj $LDFLAGS"

echo "install.packages('sf',repos='$REPOS')" | R --vanilla
