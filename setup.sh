#!/bin/bash

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

ln -s ~/code/dotfiles/bashrc ~/.bashrc
ln -s ~/code/dotfiles/bash_profile ~/.bash_profile

ln -s ~/code/dotfiles/tigrc ~/.tigrc
ln -s ~/code/dotfiles/gitconfig ~/.gitconfig
ln -s ~/code/dotfiles/vimrc ~/.vimrc

ln -s ~/code/dotfiles/ftplugin ~/.vim/ftplugin
ln -s ~/code/dotfiles/ftdetect ~/.vim/ftdetect


# set up golang
mkdir -p ~/.vim/syntax
ln -s $GOROOT/misc/vim/syntax/go.vim ~/.vim/syntax/go.vim
