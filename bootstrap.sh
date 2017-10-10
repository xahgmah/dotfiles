#!/bin/bash

echo "Vimrc symlink"
rm -f ~/.vimrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc


echo "Tmux symlink"
rm -f ~/.tmux.conf
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

echo "Bachrc symlink"
rm -f ~/.bash_profile
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile

echo "Git symlinks"
rm -f ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

rm -f ~/.gitignore
ln -s ~/.dotfiles/.gitignore ~/.gitignore

