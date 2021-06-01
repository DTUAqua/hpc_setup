#!/bin/sh

if [ ! -d adcomp ]; then
    git clone https://github.com/kaskr/adcomp
fi

cd adcomp && git pull && git clean -xdf

make install-metis-full

## FIXME: Should we pre-compile ?
## Requires faily consistent CPU architectures
