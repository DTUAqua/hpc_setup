#!/bin/sh

mkdir -p ${HOME}/.R
rm -f ${HOME}/.R/Makevars

echo "CPPFLAGS=-DEIGEN_USE_MKL_ALL -DBOOST_PHOENIX_NO_VARIADIC_EXPRESSION -Wno-ignored-attributes" `R CMD config CPPFLAGS` > ${HOME}/.R/Makevars
## echo "CXXFLAGS=-Ofast" >> ${HOME}/.R/Makevars
