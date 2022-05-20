#!/bin/sh

REPOS="https://cloud.r-project.org"

##module load geos/3.8.2
##module load gdal/3.2.0
module load udunits/2.2.20

##export LD_LIBRARY_PATH=/appl/proj/4.9.3/lib:$LD_LIBRARY_PATH
##export PKG_CPPFLAGS="-I/appl/proj/4.9.3/include $CPPFLAGS"
##export PKG_LIBS="-Wl,-rpath=/appl/proj/4.9.3/lib -L/appl/proj/4.9.3/lib -lproj $LDFLAGS"

echo "install.packages('units', configure.args=c('--with-udunits2-include=/appl/udunits/2.2.20/include','--with-udunits2-lib=/appl/udunits/2.2.20/lib/'), repos='$REPOS')" | R --vanilla

echo "install.packages('sf',repos='$REPOS')" | R --vanilla
