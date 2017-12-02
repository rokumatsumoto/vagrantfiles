# !/usr/bin/env bash

# dependencies: nodejs.sh

# return 1 if local npm package is installed at ./node_modules, else 0
# example
# echo "ember-cli : $(npm_package_is_installed ember-cli)"
function npm_package_is_installed {
  # set to 1 initially
  local return_=1
  # set to 0 if not found
  ls node_modules | grep $1 >/dev/null 2>&1 || { local return_=0; }
  # return value
  echo "$return_"
}


# local npm packages
# echo "ember-cli  $(echo_if $(npm_package_is_installed ember-cli))"

