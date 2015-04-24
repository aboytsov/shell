#!/bin/bash
dir=$(dirname $0)

realpath-local () {
  echo $("$dir/bin/realpath" "$1")
}

echo -en "This script will delete ~/.profile and ~/bin and reinstall them from '$dir'\nAre you sure? (y/n) "
read conf
if [ "$conf" == "y" ]; then
  rm -rf ~/.profile ~/bin
  ln -s $(realpath-local "$dir/.profile") ~/.profile
  ln -s $(realpath-local "$dir/bin/") ~/bin
  echo Done.
else
  echo Aborted.
fi
