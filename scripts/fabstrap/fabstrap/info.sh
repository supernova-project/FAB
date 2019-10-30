# scripts/pyfab/ui/info.sh
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

header_usage="\

------------------------------------------------------------

-v, --version    Show FAB Version
-h, --help       Show FAB Init usage menu

------------------------------------------------------------
COMPILER OPTIONS

--host_arch      Choose Host device architecture
                 (will attempt to use uname to determine
                 automatically)

--host_pm        Choose host package manager

--build_arch     Set build architecture
                 ( If you are building on an external
                 device. NOT YET SUPPORTED.)

--build_pm       Choose build package manager

--target_arch    Choose Target device architecture

--target_pm      Choose host package manager

------------------------------------------------------------

"

header_version="\
FAB Suite Version ${fab_vers}
Copyright (c) 2017-2019 Supernova Development Team <supernova@ever3st.com>
"



header_main="\
-------------------------------------------------------------------------
|
| Welcome to the FAB Suite
| Copyright (c) 2017-2019 Supernova Development Team
| <supernova@ever3st.com>
|
-------------------------------------------------------------------------

"

header_pm="\
-------------------------------------------------------------------------
|
| Please specify your current package manager
|
-------------------------------------------------------------------------

"
header_dist="\
-------------------------------------------------------------------------
|
| Please specify your current distribution
|
-------------------------------------------------------------------------

"



header_set_var() {

a="\
-------------------------------------------------------------------------
|
| Please enter desired variable for $1
| Press return to leave unchanged
|
-------------------------------------------------------------------------

  "
  echo "$a"
}



header_config="\
-------------------------------------------------------------------------
|
| Configure your Supernova installation
|
-------------------------------------------------------------------------

"

header_build="\
-------------------------------------------------------------------------
|
| Configure your build environment
|
-------------------------------------------------------------------------

"
header_host="\
-------------------------------------------------------------------------
|
| Configure your host environment
|
-------------------------------------------------------------------------

"
