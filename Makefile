# Detect modules (directories with Makefiles)
MODULES := $(subst /Makefile,,$(wildcard */Makefile))

# Remove OS-specific modules that do not match the host OS
UNAME := $(shell uname -s)
ifeq ($(UNAME),Darwin)
MODULES := $(filter-out linux,$(MODULES))
endif
ifeq ($(UNAME),Linux)
MODULES := $(filter-out macos,$(MODULES))
endif

# Build rules
.PHONY: all $(MODULES)
all: $(MODULES)
$(MODULES):
	cd ./$@ && $(MAKE)

# Install rules
install_targets := $(foreach mod,$(MODULES),install-$(mod))
.PHONY: install $(install_targets)
install: $(install_targets)
$(install_targets):
	cd ./$(subst install-,,$@) && $(MAKE) install

# Uninstall rules
uninstall_targets := $(foreach mod,$(MODULES),uninstall-$(mod))
.PHONY: uninstall $(uninstall_targets)
uninstall: $(uninstall_targets)
$(uninstall_targets):
	cd ./$(subst uninstall-,,$@) && $(MAKE) uninstall
