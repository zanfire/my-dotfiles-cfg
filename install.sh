#!/bin/bash -e
#
# Script that install the checkout as a configuration of vi.
# Author: Matteo Valdina

echo "-------------------------"
echo "| INSTALL script        |"
echo "-------------------------"
echo " "
echo "This script will substitute dotfiles files."
echo " "

read -p "Are you sure? (Y/n) " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]] ; then
  echo " ..."
else
  echo "Exit from script."
  echo " "
  exit
fi


# Get install.sh directory.
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

TMUXRC=$HOME/.tmux.conf

function replace {
if [ -e "$1" ] ; then
  rm -i "$1"
fi

  ln -v -s $2 $1
}

replace $TMUXRC $DIR/tmux.conf
replace $HOME/.Xresources $DIR/Xresources

echo " "
echo "Done."

