#!/bin/sh

REPOS="https://cloud.r-project.org"

##export LD_LIBRARY_PATH=/appl/proj/4.9.3/lib:$LD_LIBRARY_PATH
##export PKG_CPPFLAGS="-I/appl/proj/4.9.3/include $CPPFLAGS"
##export PKG_LIBS="-Wl,-rpath=/appl/proj/4.9.3/lib -L/appl/proj/4.9.3/lib -lproj $LDFLAGS"

echo "install.packages('units',repos='$REPOS',configure.args='--with-udunits2-lib=/appl/udunits/2.2.26/lib --with-udunits2-include=/appl/udunits/2.2.26/include')" | R --vanilla
