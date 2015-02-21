set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'kien/ctrlp.vim'
    Plugin 'nathanaelkane/vim-indent-guides.git'
    Plugin 'scrooloose/nerdtree.git'
    Plugin 'vim-gitgutter'
    Bundle 'klen/python-mode'
    Bundle 'tpope/vim-fugitive'
    Bundle 'jistr/vim-nerdtree-tabs'
    Bundle 'tomasr/molokai'
    Bundle 'ntpeters/vim-better-whitespace'
    Bundle 'davidhalter/jedi-vim'
    Bundle 'chase/vim-ansible-yaml'
    Bundle 'lepture/vim-jinja'
call vundle#end()

filetype plugin indent on
au! bufwritepost .vimrc source %

" mapping
let mapleader = ","
map <C-n> :NERDTreeToggle<CR>
map <C-s> :ToggleWhitespace<CR>

" global
syntax on
colorscheme molokai
set number
set hlsearch
set ls=2
set siso=1
set sm
set colorcolumn=79
set guifont=Monospace\ 10
set guioptions+=a
set modifiable

" indentation
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set si
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1

" folding
set foldmethod=manual

" tree
au vimenter * NERDTree
let g:nerdtree_tabs_open_on_gui_startup=1
let g:nerdtree_tabs_open_on_console_startup=1

" pymode
let g:pymode = 1
let g:pymode_rope = 0
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_trim_whitespaces = 1
let g:pymode_folding = 1
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_on_fly = 1
let g:pymode_virtualenv = 1
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" R0903 - Not enough public methods
" W0105 - String statement has no effect " often used for after-line doc
" W0142 - Used * or ** magic
" W0232 - Class has no __init__ method
" W0212 - Access to a protected member ... of a client class
" W0613 - Unused argument
" E1101 - Has no member (countless false-positives)
" E501 - Line too long (179 > 79 characters)
" C901 - '<function | class>' is too complex (10) [mccabe]
let g:pymode_lint_ignore = "R0903,W0142,W0105,W0212,W0613,E1101,E501,C901"

" auto enable the nginx syntax for GVIM
au BufNewFile,BufRead *.j2 set syntax=jinja
au BufNewFile,BufRead *.yml set syntax=ansible
au BufNewFile,BufRead *.yaml set syntax=ansible

