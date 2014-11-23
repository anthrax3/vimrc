set nocompatible
filetype off

set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1

Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'

call vundle#end()

syntax on
colorscheme desert

set foldmethod=syntax
set hlsearch
set ignorecase
set incsearch
set list
set listchars=tab:·\ ,trail:·,extends:»,precedes:«
set number relativenumber
set showcmd
set smartcase

" Do not automatically insert a comment leader after an enter.
set formatoptions-=r

" Remove the blinking cursor.
let &guicursor = &guicursor . ",a:blinkon0"

" Remove GUI menus.
set guioptions-=T
set guioptions-=m

set showmatch
runtime macros/matchit.vim

" When editing a file, jump to the last cursor position.
autocmd BufReadPost,FileReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   execute "normal! g'\"" |
\ endif

" Fallback to syntax based omnicompletion.
autocmd FileType *
\ if &omnifunc == "" |
\   setlocal omnifunc=syntaxcomplete#Complete |
\ endif

" Highlight VCS conflict markers.
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Enable per-filetype settings.
filetype plugin indent on
