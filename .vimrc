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
" Sort python imports tool. Run :Isort
Plugin 'fisadev/vim-isort'

let g:formatter_yapf_style = 'pep8'

" NERDTree config
let NERDTreeShowHidden=1
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_autofind = 1
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('py', 'Magenta', 'none', '#ff00ff', '#151515')


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

colorscheme solarized

" Change cursor shape for iTerm2 on macOS {
" bar in Insert mode
" inside iTerm2
if $TERM_PROGRAM =~# 'iTerm'
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" set backup                  " backups are nice ...
set undofile                "so is persistent undo ...
set undolevels=1000         "maximum number of changes that can be undone
set undoreload=10000        "maximum number lines to save for undo on a buffer reload

set splitbelow
set splitright
" ---------Mapping-----------

" Send last closing bracket to next line
nnoremap <leader>C 0/)$<cr>i<cr><esc>:noh<cr>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Moving code blocks
vnoremap < <gv
vnoremap > >gv

hi pythonInclude         ctermfg=68  guifg=#5f4777
hi pythonClass           ctermfg=167 guifg=#FF62B0
hi pythonParameters      ctermfg=147 guifg=#AAAAFF
hi pythonParam           ctermfg=175 guifg=#E37795
"hi pythonBrackets        ctermfg=183 guifg=#d7afff
hi pythonClassParameters ctermfg=111 guifg=#FF5353
hi pythonSelf            ctermfg=68  guifg=#5f87d7

map <C-n> :NERDTreeToggle<CR>
