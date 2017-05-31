#!/bin/bash

echo "Install tmuxinator"
#gem install tmuxinator

echo "Vimrc symlink"
rm -f ~/.vimrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc

echo "Bachrc symlink"
rm -f ~/.bachrc
ln -s ~/.dotfiles/.bachrc ~/.bachrc

echo "Git symlinks"
rm -f ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

rm -f ~/.gitignore
ln -s ~/.dotfiles/.gitignore ~/.gitignore




