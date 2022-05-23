#!/bin/sh

REPOS="https://cloud.r-project.org"

module load cmake/3.23.1
module load proj/8.2.1


echo "install.packages(c('nloptr', 'terra'), repos='$REPOS')" | R --vanilla

module unload cmake/3.23.1
module unload proj/8.2.1

echo "install.packages(c(
'glmmTMB',
#'tmbstan',
#'raster',
'maps',
'mapdata',
'rgeos',
'geosphere',
'maptools',
#'plyr',
'fields',
#'rstan',
'knitr',
'ggplot2',
'dplyr',
'data.table'
),repos='$REPOS')" | R --vanilla
