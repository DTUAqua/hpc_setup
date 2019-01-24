.PHONY: all install-pkg

all:
	./set_local_bin.sh
	# ./build_R_MKL.sh
	./set_R_MKL.sh
	./set_Makevars.sh
	make install-pkg

install-pkg:
	echo 'dir.create(unlist(strsplit(Sys.getenv("R_LIBS_USER"), .Platform\$$path.sep))[1L], recursive = TRUE)' | R --slave
	./install-pkg-TMB.sh
	./install-pkg-rgdal.sh
	./install-pkg-DATRAS.sh  
	./install-common-pkg.sh
