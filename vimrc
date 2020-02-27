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
imap jj <Esc>

cab vimrc e $MYVIMRC
cab load so $MYVIMRC

set splitright

" Changes cursors in different modes
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" Plugin Manager
call plug#begin()
Plug 'tpope/vim-sensible'
Plug  'arzg/vim-colors-xcode' "Color Theme
Plug 'itchyny/lightline.vim' " Lightline
Plug 'preservim/nerdtree'

call plug#end()

colorscheme xcodedarkhc
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }
" Nerd Tree Settings
map <C-o> :NERDTreeToggle<CR>
let g:NERDTreeMapJumpNextSibling = '<Nop>'
let g:NERDTreeMapJumpPrevSibling = '<Nop>'
