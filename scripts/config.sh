# !/usr/bin/env sh
#
# scripts/config.sh
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

#
# This script contains temporay functions added to hotfix the build
# environment.
#

# generic variables
# ------------------------------------------------------------
export install=0
export fab_vers="$(cat ${DIR}/VERSION)"
export dec_vers=""
export fab_root="/tmp/fab"


# build variables
# ------------------------------------------------------------
# this is the architecture Supernova
# is being built on
build_arch=$(uname -r)
build_distro=""
build_pm=""

# this is the architecture on which you
# will be installing/running Supernova
export host_arch=""
export host_pm=""
export host_env=""

# this is where installation tools will be built to
export tools="${fab_root}/tools"


# install variables
# ------------------------------------------------------------
# "/" host
export root=""
# "/home" host
export home=""
# "/boot" host
export boot=""
# "/update" host
export update=""

# Add init tools to PATH
# ------------------------------------------------------------
# export PATH="$PATH:$DIR/tools/bin"

