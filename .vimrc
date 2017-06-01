set clipboard=unnamed
set mouse=a
set bs=2

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let vundle manage vundle
Bundle 'gmarik/vundle'

" Moving code blocks
vnoremap < <gv
vnoremap > >gv

" Syntax highlighting
filetype off
filetype plugin indent on
" Vundle 'lifepillar/vim-solarized8'
syntax on
" colorscheme solarized8_dark

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

" Change cursor shape for iTerm2 on macOS {
" bar in Insert mode
" inside iTerm2
if $TERM_PROGRAM =~# 'iTerm'
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
