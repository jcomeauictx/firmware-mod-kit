default:
	$(MAKE) -C src
%:
	$(MAKE) -C src $*
