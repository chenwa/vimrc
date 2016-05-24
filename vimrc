source ~/.vim/plugins.vim
source ~/.vim/looks.vim
source ~/.vim/languages.vim

syntax on
set autoindent

set ignorecase
set smartcase
set hlsearch
set incsearch

set noerrorbells
set vb
set t_vb=

set wildmenu
set laststatus=2

set nu
set relativenumber
set scrolloff=3
set showmode
set showcmd
set nowrap
set backspace=indent,eol,start
set ruler

let g:netrw_bufsettings = "noma nomod nonu nowrap ro"

set expandtab
set shiftwidth=2
set tabstop=2

set colorcolumn=80

set nobackup
set noswapfile
set backupdir=~/.vimtmp,.
set directory=~/.vimtmp,.

nnoremap ; :
nnoremap <tab> %
vnoremap <tab> %
map <C-j> <C-w>w
map <C-h> <C-w>H
map <space> <leader>

cab vimrc e $MYVIMRC
cab load so $MYVIMRC

set splitright
