#!/bin/bash -e
#
# Script that install the checkout as a configuration of vi.
# Author: Matteo Valdina

echo "-------------------------"
echo "| INSTALL script        |"
echo "-------------------------"
echo " "
echo "This script will substitute dotfiles folder."
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

if [ -e "$TMUXRC" ] ; then
  rm -i "$VIMRC"
fi

pushd ~ > /dev/null
ln -v -s $DIR/tmux.conf $TMUXRC

echo " "
echo "Done."

