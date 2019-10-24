#  !/usr/bin/env sh
#
#  FAB/ui/options.sh
#
#  Copyright (c) 2017-2019 Supernova Development Team <supernova@ever3st.com>
#
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#  SOFTWARE.
#



# build options
# ------------------------------------------------------------
options_dist="\
 1. Supernova
 2. Debian
 3. Ubuntu
 4. Kerbuntu
 5. Arch

 6. Arch_Strike
 7. Redhat
 8. Fedora
 9. Centos
 10. Linux from source

 0. Return
"

# config options
# ------------------------------------------------------------
options_pm="\
 1. mida      Supernova
 2. apt       Debian / Ubuntu / Kerbuntu
 3. pacman    Arch / Arch Strike
 4. yum       Redhat / Fedora / Centos
 5. dnf       Fedora
 6. Zypper    openSUSE
 7. ALPM      Alipine Linux
 8. na        no package manager

 0. Return
"


options_Kernel="\
1. defconfig    Compile a kernel best suited for me
2. mvconfig     I already have a compiled kernel

3. menuconfig   I want to set up the kernel myself
4. noah         I want to use the XNU kernel

0. Return
"

options_shell="\
1. bash
2. Tcsh
3. Ksh
4. Zsh
5. Fish

0. Return
"

options_init="\
1. SysV Init
2. SystemD
3. OpenRC
4. Runit

0. Return
"

# menu options
# ------------------------------------------------------------
options_decinit="\
 1. Install dependancies
 2. Install environment tools
 3. Add repo

 0. Return
"

options_build="\
 1. Choose build distribution
 2. Choose build package manager

 0. Return
"

options_host="\



 0. Return
"

options_config="\
 1. Choose kernel config
 2. Choose init
 3. Choose Shell
 4. Set hostname

 0. Return
"

options_main="\
 1. configure FAB
 2. Build options
 3. Host options

 5. Configure Supernova installation
 6. Install Supernova

 0. Exit
"
