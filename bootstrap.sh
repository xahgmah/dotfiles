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

mkdir ~/.vim
echo "Update python syntax"
mkdir ~/.vim/syntax
rm -f ~/.vim/syntax/python.vim
curl https://cdn.rawgit.com/hdima/python-syntax/master/syntax/python.vim > ~/.vim/syntax/python.vim

echo "Update color scheme"
mkdir ~/.vim/colors
rm -f ~/.vim/colors/solarized.vim
curl https://cdn.rawgit.com/altercation/vim-colors-solarized/master/colors/solarized.vim > ~/.vim/colors/solarized.vim
