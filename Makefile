.PHONY: all install-pkg

all:
	./set_local_bin.sh
	./build_R_MKL.sh
	./set_R_MKL.sh
	./set_Makevars.sh
	make install-pkg

install-pkg:
	./create_local_pkg_folder.sh
	./install-pkg-remotes.sh
	./install-pkg-TMB.sh
	./install-pkg-rgdal.sh
	./install-pkg-units.sh
	./install-pkg-sf.sh
	./install-pkg-DATRAS.sh
	./install-pkg-gridConstruct.sh
	./install-common-pkg.sh
