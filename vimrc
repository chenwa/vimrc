set nocompatible

filetype indent plugin on
syntax on
set autoindent

set ignorecase
set smartcase

set noerrorbells
set vb
set t_vb=

set nu
set modeline
set showmode
set nowrap
set backspace=indent,eol,start
set ruler
set expandtab
set shiftwidth=2
set tabstop=2
set nobackup
set noswapfile
set colorcolumn=80

set background=dark
"colorscheme solarized
source $VIMRUNTIME/vimrc_example.vim

set backupdir=~/vimtmp,.
set directory=~/vimtmp,.

nnoremap ; :
map <C-j> <C-w>w
map <C-h> <C-w>H
imap ` <esc>

"" Expand tabs in C files to spaces
"au BufRead,BufNewFile *.{c,h,java,cpp} set expandtab
"au BufRead,BufNewFile *.{c,h,java,cpp} set shiftwidth=2
"au BufRead,BufNewFile *.{c,h,java,cpp} set tabstop=2
"
"" Do not expand tabs in assembly file.  Make them 8 chars wide.
"au BufRead,BufNewFile *.s set noexpandtab
"au BufRead,BufNewFile *.s set shiftwidth=8

au FileType java ab psvm public static void main(String[] args){<LF>
au FileType java ab sop System.out.println("");<esc>2hi
au FileType java ab for; for (int i = 0; i < ; i++) {<esc>7hi
au FileType java ab pc public class
au FileType java ab pub public
au FileType java ab st static
au FileType java ab fin final

cab vimrc e $MYVIMRC
cab load so $MYVIMRC


