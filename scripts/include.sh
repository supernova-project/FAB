# !/usr/bin/env sh
#
# scripts/include.sh
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
# This is the include script to bring all init dependancies into
# the init environment
#

# main scripts
# ------------------------------------------------------------
source $DIR/scripts/config.sh
source $DIR/scripts/alert.sh
source $DIR/scripts/macros.sh
source $DIR/scripts/ui.sh


# fab environment scripts
# ------------------------------------------------------------
source $DIR/scripts/env/env.sh
source $DIR/scripts/env/ui.sh






# tools scripts
# ------------------------------------------------------------
# source $DIR/scripts/tools/deps/install.sh
# source $DIR/scripts/tools/tools_install.sh



# build scripts
# ------------------------------------------------------------
#source $DIR/scripts/build.sh
#source $DIR/scripts/build_deps.sh

# build environment ui
# ------------------------------------------------------------
# source $DIR/scripts/ui/headers.sh
# source $DIR/scripts/ui/menus.sh
# source $DIR/scripts/ui/options.sh

