#!/bin/sh

echo 'dir.create(unlist(strsplit(Sys.getenv("R_LIBS_USER"), .Platform$path.sep))[1L], recursive = TRUE)' | R --slave
