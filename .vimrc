set clipboard=unnamed
set mouse=a
set bs=2

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage vundle
Plugin 'VundleVim/Vundle'

" Moving code blocks
vnoremap < <gv
vnoremap > >gv

" Syntax highlighting
filetype off
filetype plugin indent on
Plugin 'altercation/vim-colors-solarized'
syntax on

" Plugins
Plugin 'ctrlp.vim'
Plugin 'scrooloose/nerdtree'

" CtrlP Settings
" Colomn width and line numbers
set number
set tw=119
set nowrap
set fo-=t
set colorcolumn=120
highlight ColorColumn ctermbg=233

" :W sudo saves the file
" " (useful for handling the permission-denied error)
command! W w !sudo tee % > /dev/null

call vundle#end()
filetype plugin indent on 

let g:solarized_termcolors=256
colorscheme solarized
" Change cursor shape for iTerm2 on macOS {
" bar in Insert mode
" inside iTerm2
if $TERM_PROGRAM =~# 'iTerm'
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

