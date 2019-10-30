# Fabstrap Macros
#============================================================================
# This script is is a collection of generic functions used by fabstrap

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
