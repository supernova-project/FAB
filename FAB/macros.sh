#  !/usr/bin/env sh
#
#  tools/macros.sh
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
# This script is is a collection of generic functions used by the init
# utility in various different other scripts.
#

check_root() {
    if [ $EUID -ne 0 ]; then
        echo "ERROR: Supernova Init must be run as root"
        exit 0
    fi
}

connect_err() {
  echo "WARNING: cannot connect to $1. Press any key to continue."
  read -n 1 -s
}

invalid_input() {
  echo "Invalid option. Press any key to continue."
  read -n 1 -s
}

check_connect() {
  if curl -s --head  --request GET "$1" | grep "200 OK" > /dev/null; then
     echo "ok"
  else
     echo "err"
  fi
}


pkg_info() {
# Print package information
echo "$installMessage"
echo "\
Host Repo:    $host_repo
Pkg Name:     $pkg_name
Pkg Version:  $pkg_version"
}
