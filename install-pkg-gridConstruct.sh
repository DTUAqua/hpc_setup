#!/bin/sh

echo "
devtools::install_github('kaskr/gridConstruct',subdir='gridConstruct')
" | R --vanilla
