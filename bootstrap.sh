#!/bin/bash

echo "Vimrc symlink"
rm -f ~/.vimrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc


echo "Tmux symlink"
rm -f ~/.tmux.conf
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

echo "Bachrc symlink"
rm -f ~/.bachrc
ln -s ~/.dotfiles/.bachrc ~/.bachrc

echo "Git symlinks"
rm -f ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

rm -f ~/.gitignore
ln -s ~/.dotfiles/.gitignore ~/.gitignore

echo "Install Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Install color scheme"
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized/
