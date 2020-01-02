#!/bin/sh -x

CURFILE=$(readlink -f "$0")
CURPATH=$(dirname "$CURFILE")

git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/bash-it
~/bash-it/install.sh --silent
rm ~/.bashrc
ln -s "${CURPATH}/bashrc" ~/.bashrc 
