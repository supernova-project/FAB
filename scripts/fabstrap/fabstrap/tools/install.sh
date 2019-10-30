# !/usr/bin/env bash
#
# FAB/tools/install.sh
#
# Copyright (c) 2017-2019 Supernova Development Team <supernova@ever3st.com>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#


get_crosstool_ng() {
  cd $DIR/src/tools
  addr="https://github.com/crosstool-ng/crosstool-ng"
  echo "Checking crosstool-ng repo is alive.."
  x=$(check_connect $addr)

  if [ $x == "ok" ]; then
    git clone $addr
    cd crosstool-ng
    git checkout origin/master
  else
    connect_err "crosstool-ng repo"
  fi

}


build_crosstool_ng() {
  cd $DIR/src/tools/crosstool-ng
  ./bootstrap
  ./configure --prefix=$DIR/tools/
  make
  make install
}


get_sqlite() {
  cd $DIR/src/tools
  addr="https://www.sqlite.org/src/tarball/sqlite.tar.gz?r=release"
  echo "Checking sqlite is alive.."
  x=$(check_connect $addr)

  if [ $x == "ok" ]; then
    wget -O sqlite.tar.xz $addr
    tar -xf sqlite.tar.xz
    rm sqlite.tar.xz
  else
    connect_err "sqlite tar mirror"
  fi

}


build_sqlite() {
  cd $DIR/src/tools/sqlite
}


get_tools() {
  rm -rf $DIR/src/tools
  mkdir $DIR/src/tools
  get_crosstool_ng
  get_sqlite
}


build_tools() {
  build_crosstool_ng
  build_sqlite
}


install_tools() {
  clear

  get_tools
  #build_tools

  echo "Tools installed. Press any key to continue."
  read -n 1 -s
}
