#!/bin/sh

echo "
remotes::install_github('kaskr/gridConstruct',subdir='gridConstruct')
" | R --vanilla
