set clipboard=unnamed
set mouse=a
set bs=2
" set tabs to have 4 spaces
set ts=4
set shiftwidth=4
" expand tabs into spaces
set expandtab
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Moving code blocks
vnoremap < <gv
vnoremap > >gv

" Syntax highlighting
filetype off
filetype plugin indent on
Plugin 'altercation/vim-colors-solarized'
syntax on

" ----Plugins----
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlp.vim'
" Filemanager
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Git support
Plugin 'tpope/vim-fugitive'
" Status row
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" ----Python----

" Autoindentation
Plugin 'vim-scripts/indentpython.vim'
" Strip trailing whitespaces automotically
autocmd BufWritePre * %s/\s\+$//e

Plugin 'Chiel92/vim-autoformat'

let g:formatter_yapf_style = 'pep8'

" NERDTree config
let NERDTreeShowHidden=1
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_autofind = 1
" Fast Python completion and Go-to-definition
Plugin 'Valloric/YouCompleteMe'
nnoremap <leader>j :YcmCompleter GoToDefinition<CR>
let g:ycm_autoclose_preview_window_after_completion = 1

" Work with python virtualenvs in vim
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'nvie/vim-flake8'
" Hide *.pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" ------------------------

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

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

