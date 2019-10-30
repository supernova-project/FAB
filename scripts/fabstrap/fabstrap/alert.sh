# scripts/alert.sh
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


# errors
# ------------------------------------------------------------

error_throw() {
  local error_text="[ERROR]: ${1}"
  local error_type=${2}
  echo "${error_text}"
  exit 0
}

err_unknown_param() {
	error_throw "Unknown Parameter \"${1}\""
}

# warnings
# ------------------------------------------------------------

warn_throw() {
  local warn_text="[WARNING]: ${1}"
  echo "${warn_text}"
}

# notifies
# ------------------------------------------------------------


notify_install="\

Supernova release: 
target envrionment: 

Supernova root target: ${root_mnt}
Supernova home target: ${home_mnt}
Supernova boot target: ${boot_mnt}
Supernova install target: ${install_mnt}

build architecture: ${build_arch}
build Package manager: ${build_pm}
host architecture: ${host_build}
host Package manager: ${host_pm}

do you wish to continue? [y/n]

"

# information menus
# --------------------------------------------

version() {
  echo "${header_version}"
  exit 0
}

usage() {
  echo "${header_usage}"
  exit 0
}

