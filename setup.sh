#! /bin/sh

git clone https://github.com/gmarik/Vundle.vim.git ./bundle/Vundle.vim
vim -u vundle-setup.vim "+PluginInstall" "+qall"
