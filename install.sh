#!/bin/sh 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc
cp -r .vim ~/
vim -c 'PluginInstall' -c 'qa!'
