#  !/usr/bin/env sh
#
#  fab.sh
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


export DIR=$(pwd)
export fab_status="1"

git_update() {
    echo "attempting to update build environment.."
    git pull --rebase origin master    
}

main() {
    case $fab_status in
        # start/restart the build environment
        1) 
            sh $DIR/FAB/main.sh ${@}
            fab_status="$?"
            main;;
        # Update the build environment
        2) 
            git_update
            fab_status="1"
            main ${@};;
        # exit the build environment
        0|*) 
            exit 0;;
    esac


}




# terminal entry
# ------------------------------------------------------------
if [[ "$(basename -- "$0")" == "fab.sh" ]]; then
    main
fi