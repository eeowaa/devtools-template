# System commands
SHELL           := /bin/sh
INSTALL         := install
INSTALL_PROGRAM := $(INSTALL)
INSTALL_DATA    := $(INSTALL) -m 644

# Installation directory prefixes
prefix      := $(DESTDIR)$(HOME)/.local
exec_prefix := $(prefix)

# Directories for executables
bindir     := $(exec_prefix)/bin
sbindir    := $(exec_prefix)/sbin
libexecdir := $(exec_prefix)/libexec

# Directories for data
datarootdir    := $(prefix)/share
datadir        := $(datarootdir)
sysconfdir     := $(prefix)/etc
sharedstatedir := $(prefix)/com
localstatedir  := $(prefix)/var
