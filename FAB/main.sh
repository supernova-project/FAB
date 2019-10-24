#  !/usr/bin/env sh
#
#  FAB/main.sh
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

# include dependancies
source ${DIR}/FAB/include.sh

# build variables
# ------------------------------------------------------------
# this is the architecture Supernova
# is being built on
build_arch=$(uname -r)
build_distro=""
build_pm=""

# this is the architecture on which you
# will be installing/running Supernova
host_arch=""
host_pm=""
host_env=""

# this is where installation tools will be built to
tools="/mnt/dfs/tools"


# install variables
# ------------------------------------------------------------
# "/" host
root=""
# "/home" host
home=""
# "/boot" host
boot=""
# "/update" host
update=""




# main
# ------------------------------------------------------------
parse_opts() {
    while [ ${#} -gt 0 ]; do
        case ${1} in
            -v|--version)
                version;;
            -h|--help)
                usage;;
            -i | --install)
                echo "direct installation selected."
                install=1
                ;;
            --target_machine=*)
                target_machine="${i#*=}"
                shift;;
            --host_machine=*)
                host_machine="${1#*=}"
                shift;;
            --host_pm=*)
                host_pm="${i#*=}"
                shift;;
            *)
                err_unknown_param "${1}";;
      esac
    done
}


main(){
    #check_root
    if [ $install -eq 1 ]; then
        dec_inst
    else
        menu_main
    fi
    exit 0
}



parse_opts ${@} && main