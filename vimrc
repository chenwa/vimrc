source ~/.vim/plugins.vim
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
set modeline
set showmode
set nowrap
set backspace=indent,eol,start
set ruler

set expandtab
set shiftwidth=2
set tabstop=2

set colorcolumn=80

set nobackup
set noswapfile
set backupdir=~/.vimtmp,.
set directory=~/.vimtmp,.

nnoremap ; :
map <C-j> <C-w>w
map <C-h> <C-w>H
imap ` <esc>
map <SPACE> <leader>

cab vimrc e $MYVIMRC
cab load so $MYVIMRC
