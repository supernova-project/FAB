#  !/usr/bin/env bash
#
#  FAB/tools/deps_install.sh
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

#
# This script is used to install dependancies used by the decorum init
# environment.
#

install_deps_mida() {
  mida -u
  mida -if decorum-base
  mida -if init-deps
}

rem_deps_mida() {
  mida -u
  mida -r init-deps
}

install_deps_apt() {
  apt-get update -y
  apt-get upgrade -y

  i=[\
  "bash" "binutils" "bison"
  "coreutils" "diffutils"
  "findutils" "gawk" "gcc"
  "grep" "gzip" "m4" "xz" "tar"
  "make" "patch" "perl"
  "sed" "texinfo" "automake"
  "subversion" "git" "flex"
  "help2man" "libtool"

  "linux-source" "linux-headers-$(uname -r)"
  "libc-dev-bin" "libc-bin" "glibc-source"
  "g++" "python-dev"
  ]

  for a in "${i[@]}"; do
    apt-get -y install $a
  done
}

install_deps_pacman() {
  Pacman -Syu
  Pacman -Sy 'base-devel'

  i=[\
  "bash" "binutils" "bison"
  "coreutils" "diffutils"
  "findutils" "gawk" "gcc"
  "grep" "gzip" "m4" "xz" "tar"
  "make" "patch" "perl"
  "sed" "texinfo" "automake"
  "subversion" "git" "flex"
  "help2man" "libtool"

  "linux" "linux-headers"
  "glibc" "ncurses"
  "g++" "python"
  ]

  for a in "${i[@]}"; do
    Pacman -Sy $a
  done
}


install_deps_yum() {
  yum -y update
  yum -y groupinstall 'Development Tools'

  i=[\
  "bash" "binutils" "bison"
  "coreutils" "diffutils"
  "findutils" "gawk" "gcc"
  "grep" "gzip" "m4" "xz" "tar"
  "make" "patch" "perl"
  "sed" "texinfo" "automake"
  "subversion" "git" "flex"
  "help2man" "libtool"

  "kernel-devel" "kernel-headers"
  "gcc-c++" "glibc" "ncurses-devel"
  "ncurses-libs" "python-devel"
  ]


  for a in "${i[@]}"; do
    yum -y install $a
  done
}

install_deps_dnf() {
  dnf -y update
  dnf -y groupinstall 'Development Tools'

  i=[\
  "bash" "binutils" "bison"
  "coreutils" "diffutils"
  "findutils" "gawk" "gcc"
  "grep" "gzip" "m4" "xz" "tar"
  "make" "patch" "perl"
  "sed" "texinfo" "automake"
  "subversion" "git" "flex"
  "help2man" "libtool"

  "kernel-devel" "kernel-headers"
  "gcc-c++" "glibc" "ncurses-devel"
  "ncurses-libs" "python-devel"
  ]


  for a in "${i[@]}"; do
    dnf -y install $a
  done
}

install_deps_pkg() {
  clear
  echo "installing generic dependancies.."
  case $build_pm in
    1)
      install_deps_mida;;
    2)
      install_deps_apt;;
    3)
      install_deps_pacman;;
    4)
      install_deps_yum;;
    5)
      install_deps_dnf;;
    *)
      menu_build_pm
      install_deps_pkg;;
  esac
}

install_deps_gener() {
  clear
  echo "installing generic dependancies.."
  mkdir -v $dir_root
  mkdir -v $tools
  ln -sv $tools /
  mkdir -v $root/sources
  groupadd decinit
  useradd -s /bin/bash -g decinit -m -k /dev/null decinit
  cp -r $DIR/FAB/config/bash/bash_profile /home/decinit/.bash_profile
  cp -r $DIR/FAB/config/bash/bashrc /home/decinit/.bashrc
}

rem_deps_gener() {
  userdel -r decinit
  groupdel decinit
  rm -rf /home/decinit
}

install_deps() {
  clear
  install_deps_gener
  install_deps_pkg
  echo "Dependancies installed. Press any key to continue."
  read -n 1 -s
}

rem_deps() {
    echo  ""
}
