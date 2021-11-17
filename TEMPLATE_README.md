# devtools

This repository contains dev team tools that don't have a clear home anywhere
else. If you have a useful script you'd like to share, put it here!

## Usage

```
make           [module]
make install   [module]
make uninstall [module]
```

## Configuration

Normally, zero configuration is required for things to work. However, if you
run into problems or just want to modify the behavior of the build system,
check `common.mk`, which contains definitions for system commands and
installation directories.

The most common variable to modify is `prefix`, which sets the the root
installation prefix (default is `$HOME/.local`). If you want to change `prefix`
to something else like `/usr/local`, you have a few options:

1. Modify the value of `prefix` in `common.mk`
2. Run all of your `make` commands like `make prefix=/usr/local [target]`
3. Run all of your `make` commands like `prefix=/usr/local make -e [target]`

All three options are essentially equivalent.

## Examples

### Build everything
If there is anything that must be done before the tools can be installed, the
following command will do those things:

``` sh
make
```

### Install everything relevant
After building everything, run the following command to install all general and
OS-specific tools to your local system:

``` sh
make install
```

### Build and install tools for a specific module
If you only care about tools for a specific use case, you can build and install
only those tools (packaged as a "module" in a subdirectory):

``` sh
make aws
make install-aws
make install aws # INCORRECT: need a dash character
```

### Uninstall everything
Everything that has been installed will be uninstalled by the following
command. There will be no errors if certain tools have not been installed:

``` sh
make uninstall
```

### Uninstall a specific module
For example, to uninstall the tools provided by the `aws` module:

``` sh
make uninstall-aws # NOTE: remember the dash
```

## Contributing

To add a new module, the following basic conditions must be met:

1. It must have a top-level subdirectory
2. The module subdirectory must contain a `Makefile`
3. The `Makefile` contents must:
   - Start with a `include ../common.mk` line to include boilerplate definitions
   - Contain a default rule for building all module-specific tools
   - Contain a phony `install` rule to install all module-specific tools
   - Contain a phony `uninstall` rule to uninstall all module-specific tools

It is also a good idea to include a short `README.md` with each module to
describe what it is for. For more information, consult the existing modules. 
