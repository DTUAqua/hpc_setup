#!/bin/sh

REPOS="https://cloud.r-project.org"

echo "install.packages(c(
'glmmTMB',
'tmbstan',
'raster',
'maps',
'mapdata',
'rgeos',
'geosphere',
'maptools',
'plyr',
'fields',
'rstan',
'knitr',
'ggplot2'
),repos='$REPOS')" | R --vanilla
