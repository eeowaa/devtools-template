include ../common.mk

.PHONY: all
all:
	@echo 'Nothing to build: choose a different target'

.PHONY: install
install:
	mkdir -p $(bindir)
	$(INSTALL_PROGRAM) pull-requests $(bindir)/pull-requests

.PHONY: uninstall
uninstall:
	rm -f $(bindir)/pull-requests
