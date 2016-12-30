#!/bin/bash

ln -s ~/code/dotfiles/bashrc ~/.bashrc
ln -s ~/code/dotfiles/bash_profile ~/.bash_profile

ln -s ~/code/dotfiles/tigrc ~/.tigrc
ln -s ~/code/dotfiles/gitconfig ~/.gitconfig

mkdir -p ~/.config

#neovim setup
pip3 install --user neovim
PLUGIN_DIR=~/.config/nvim/dein-plugins/repos/github.com
mkdir -p $PLUGIN_DIR
git clone https://github.com/Shougo/dein.vim $PLUGIN_DIR/Shougo/dein.vim
ln -s ~/code/dotfiles/nvim ~/.config/nvim

