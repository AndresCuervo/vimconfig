#! /bin/sh

brew install neovim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s ~/.vim/init.vim ~/.config/nvim/init.vim
ln -s ~/.vim/vimrc ~/.vimrc

nvim "+PlugInstall" "+qall"
