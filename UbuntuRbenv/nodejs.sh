# !/usr/bin/env bash


# https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions

if which node > /dev/null
  then
  echo "nodejs is installed, skipping..."
else
  echo "Install nodejs"
  curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
  sudo apt-get install -y nodejs
fi






