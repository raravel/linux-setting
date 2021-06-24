#!/bin/sh -x

CURFILE=$(readlink -f "$0")
CURPATH=$(dirname "$CURFILE")

sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim

rm -f ~/.vimrc
rm -rf ~/.vim
ln -s "${CURPATH}/vimrc" ~/.vimrc 
ln -s "${CURPATH}/vim" ~/.vim
sudo ln -s "${CURPATH}/vim-backup" /usr/bin/vim-backup
mkdir ~/.vimhistory
touch ~/.vimhistory/vimhis.txt

vi -c 'PluginInstall' -c 'q!' -c 'q!'
