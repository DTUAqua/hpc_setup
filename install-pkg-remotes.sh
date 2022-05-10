#!/bin/sh

REPOS="https://cloud.r-project.org"


echo "install.packages(c(
'remotes'
),repos='$REPOS')" | R --vanilla
