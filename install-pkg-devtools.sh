#!/bin/sh

REPOS="https://cloud.r-project.org"


echo "install.packages(c(
'devtools'
),repos='$REPOS')" | R --vanilla
