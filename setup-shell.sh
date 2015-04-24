#!/bin/bash
dir=$(dirname $0)

realpath-local () {
  echo $("$dir/bin/realpath" "$1")
}

echo -en "This script will delete ~/.profile and ~/bin and reinstall them from '$dir'\nAre you sure? (y/n) "
read conf
if [ "$conf" == "y" ]; then
  rm -rf ~/.profile ~/.bashrc ~/.bash_login ~/bin
  ln -s $(realpath-local "$dir/.bashrc") ~/.bashrc
  ln -s $(realpath-local "$dir/.bash_login") ~/.bash_login
  ln -s $(realpath-local "$dir/bin/") ~/bin
  echo Done.
else
  echo Aborted.
fi
