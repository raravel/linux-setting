#!/bin/sh -x

CURFILE=$(readlink -f "$0")
CURPATH=$(dirname "$CURFILE")

sudo apt-get install zsh
chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

rm ~/.zshrc
ln -s "${CURPATH}/zshrc" ~/.zshrc
. ~/.zshrc
