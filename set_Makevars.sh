#!/bin/sh

mkdir -p ${HOME}/.R
rm -f ${HOME}/.R/Makevars

echo "CPPFLAGS=-Wno-aggressive-loop-optimizations -Wno-deprecated-declarations -Wno-ignored-attributes -Wno-enum-compare -DEIGEN_USE_MKL_ALL -DBOOST_PHOENIX_NO_VARIADIC_EXPRESSION -DFCONE=\"\"" `R CMD config CPPFLAGS` > ${HOME}/.R/Makevars
## echo "CXXFLAGS=-Ofast" >> ${HOME}/.R/Makevars
