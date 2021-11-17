<!--
SPDX-FileCopyrightText: © 2021 eeowaa <https://github.com/eeowaa>
SPDX-License-Identifier: BSD-2-Clause-Patent
-->
# devtools-templates

Scaffolding that development teams can use for shared tools repos.

## Getting started

The following commands should be sufficient to set up a blank `devtools` repo
for your team:

``` sh
# Clone devtools-templates into devtools
git clone https://github.com/eeowaa/devtools-template.git devtools

# Configure the repo for team usage and git-commit
cd devtools && ./configure

# Push the devtools repo to somewhere your team can access it
git remote set-url origin ${devtools_url}
git push -u origin main
```

## License information

The `devtools-template` project is licensed under the
[BSD-2-Clause Plus Patent License](https://spdx.org/licenses/BSD-2-Clause-Patent.html),
giving you unambiguous legal permission to use the project as intended, i.e.,
creating a new repository building upon the provided template.

Among other things, the [./configure](configure) script provided with this
repository moves the [LICENSE](LICENSE) file into a separate [NOTICE](NOTICE)
file containing a short preamble. This achieves two legal goals which help
to protect your team should you ever distribute your work more broadly:

1. Your team's original work will have no license attached; i.e. you reserve
   all rights to your intellectual property.[^1]

2. Your team fulfills its legal obligation to disseminate the license and
   warranty disclaimer of the `devtools-template` project.[^2]

[^1]: If you were to retain the `LICENSE` file in its original form, this could
    be construed as licensing your work under the same terms as the
    `devtools-template` project, which is not required. You are free to
    distribute your work under whatever license you choose.

[^2]: The author of `devtools-template` only requires this in order to retain
    legal protection granted by the warranty disclaimer. If it were not for
    this concern, the author would have likely licensed `devtools-template`
    under an even more permissive license.
    
