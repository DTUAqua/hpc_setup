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
'ggplot2',
'dplyr',
'data.table'
),repos='$REPOS')" | R --vanilla
