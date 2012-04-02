set nocompatible
filetype off

" Vundle
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1

Bundle 'Lokaltog/vim-powerline'
Bundle 'ciaranm/securemodelines'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'vimoutliner/vimoutliner'

" When editing a file, jump to the last cursor position.
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   execute "normal! g'\"" |
\ endif

" Use syntax based omnicompletion, in the worst case.
autocmd Filetype *
\ if &omnifunc == "" |
\   setlocal omnifunc=syntaxcomplete#Complete |
\ endif

" All terminals are colour now.
colorscheme desert

" Switch syntax hilighting on.
syntax on

" Folding depends on syntax hilighting to be on.
set foldmethod=syntax

" Also switch on highlighting the last used search pattern.
set hlsearch

" Remove menu ugliness.
set guioptions-=T
set guioptions-=m

" Remove the blinking cursor.
let &guicursor = &guicursor . ",a:blinkon0"

" Show partially entered commands on the status line.
set showcmd

" Indicate matching braces.
set showmatch
runtime macros/matchit.vim

" Show the results of a search immediately.
set incsearch

" Searches should only be case-sensitive if there are uppercase letters.
set ignorecase
set smartcase

" Do not automatically insert a comment leader after an enter
set formatoptions-=r

" Display unprintable characters
set list
set listchars=tab:·\ ,trail:·,extends:»,precedes:«

" Contextually switch between relative and absolute line numbers
set relativenumber
autocmd InsertEnter * :setlocal number
autocmd InsertLeave * :setlocal relativenumber

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

autocmd FileType ruby setlocal expandtab shiftwidth=2 autoindent

" Per-filetype settings.
filetype plugin indent on
