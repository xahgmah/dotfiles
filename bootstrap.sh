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

rm -rf ~/.vim/
mkdir ~/.vim
echo "Update python syntax"
mkdir ~/.vim/syntax
curl https://cdn.jsdelivr.net/gh/hdima/python-syntax@master/syntax/python.vim > ~/.vim/syntax/python.vim

echo "Update color scheme"
mkdir ~/.vim/colors
curl https://cdn.jsdelivr.net/gh/altercation/vim-colors-solarized@master/colors/solarized.vim > ~/.vim/colors/solarized.vim
