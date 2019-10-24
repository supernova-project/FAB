#  !/usr/bin/env sh
#
#  FAB/ui/menus.sh
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
# These are the UI menus used by Supernova init
#


# build menus
# --------------------------------------------

menu_build_dist() {
  clear
  echo "$header_dist$options_dist"
  read option

  case $option in
    0)
      return;;
    [1-9])
      build_distro=$option
      return;;
    *)
      invalid_input;;
    esac
  menu_build_dist
}

menu_build_pm() {
  clear
  echo "$header_pm$options_pm"
  read option

  case $option in
    0)
      return;;
    [1-9])
      build_pm=$option
      return;;
    *)
      invalid_input;;
    esac
  menu_build_dist
}

# host menus
# --------------------------------------------






# main menus
# --------------------------------------------


menu_env() {
  clear
  echo "$header_decinit$options_decinit"
  read option

  case $option in
    0)
      return;;
    1)
      install_deps;;
    2)
      install_tools;;
    *)
      invalid_input;;
  esac
  menu_env
}

menu_build() {
  clear
  echo "$header_build$options_build"
  read option

  case $option in
    0)
      return;;
    1)
      menu_build_dist;;
    2)
      menu_build_pm;;
    *)
      invalid_input;;
  esac
  menu_build
}


menu_host() {
  clear
  echo "$header_host$options_host"
  read option

  case $option in
    0)
      return;;
    *)
      invalid_input;;
  esac
  menu_host
}

menu_config() {
  clear
  echo "$header_config$options_config"
  read option

  case $option in
    0)
      return;;
    1)
      # kernel config
      return;;
    2)
      # select init
      return;;
    3)
      # select shell
      return;;
    4)
      # set hostname
      return;;
    *)
      invalid_input;;
  esac
  menu_config
}

menu_main() {
  clear
  echo "$header_main$options_main"
  read option

  case $option in
    0)
      clear
      exit 0;;
    1)
      menu_config;;
    2)
      menu_build;;
    3)
      menu_host;;
    4)
      menu_config;;
    
    *)
      invalid_input;;
  esac
  menu_main
}
