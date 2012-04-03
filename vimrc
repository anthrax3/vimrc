set nocompatible
filetype off

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

syntax on
colorscheme desert

set cryptmethod=blowfish
set foldmethod=syntax
set hlsearch
set ignorecase
set incsearch
set list
set listchars=tab:·\ ,trail:·,extends:»,precedes:«
set showcmd
set smartcase

" Do not automatically insert a comment leader after an enter
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

" Contextually switch between relative and absolute line numbers
set relativenumber
autocmd InsertEnter * setlocal number
autocmd InsertLeave * setlocal relativenumber

autocmd FileType ruby setlocal expandtab shiftwidth=2 autoindent
autocmd BufReadPost,FileReadPost *
\ if &filetype == "vo_base" |
\   setlocal foldlevel=0 |
\ endif

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Per-filetype settings.
filetype plugin indent on
