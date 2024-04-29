" 
" Alex's vimrc
"

" Arch defaults
if &compatible
  set nocompatible
endif

set backspace=indent,eol,start
set ruler
set suffixes+=.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set suffixes-=.h
set suffixes-=.obj

" Move temporary files to a secure location to protect against CVE-2017-1000382
if exists('$XDG_CACHE_HOME')
  let &g:directory=$XDG_CACHE_HOME
else
  let &g:directory=$HOME . '/.cache'
endif
let &g:undodir=&g:directory . '/vim/undo//'
let &g:backupdir=&g:directory . '/vim/backup//'
let &g:directory.='/vim/swap//'
" Create directories if they doesn't exist
if ! isdirectory(expand(&g:directory))
  silent! call mkdir(expand(&g:directory), 'p', 0700)
endif
if ! isdirectory(expand(&g:backupdir))
  silent! call mkdir(expand(&g:backupdir), 'p', 0700)
endif
if ! isdirectory(expand(&g:undodir))
  silent! call mkdir(expand(&g:undodir), 'p', 0700)
endif

" Make shift-insert work like in Xterm
if has('gui_running')
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
endif

" Custom
if has('nvim')
    " Neovim specific commands
else
    " Standard vim specific commands
endif

filetype on
syntax on
set encoding=utf-8

set number
set relativenumber
set autoindent
set laststatus=2
set cursorline
highlight Cursorline cterm=bold ctermbg=black
set cursorcolumn
highlight Cursorcolumn ctermbg=black
set showcmd

let &t_SI = "\e[4 q"
let $t_EI = "\e[2 q"

set hlsearch
set ignorecase
set smartcase

set expandtab

set tabstop=4
set softtabstop=4
set shiftwidth=4

set showmatch

set clipboard=unnamedplus

