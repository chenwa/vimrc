set nocompatible              " be iMproved, required
filetype off                  " required
set shell=bash

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'justinmk/vim-sneak'
Plugin 'altercation/vim-colors-solarized'
Plugin 'takac/vim-hardtime'
Plugin 'derekwyatt/vim-scala'

" Shougo
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neomru.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


let g:hardtime_default_on=1
let g:hardtime_maxcount=2

" Unite
" let g:unite_source_history_yank_enable=1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
nnoremap <leader>e :Unite -no-split -buffer-name=files -start-insert
      \ file_mru file file_rec<cr>
" nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert
" outline<cr>
" nnoremap <leader>y :Unite -no-split -buffer-name=yank history/yank<cr>
nnoremap <leader>b :Unite -no-split -buffer-name=buffer buffer<cr>


" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_smart_case=1
let g:neocomplete#sources#syntax#min_keyboard_length=3
inoremap <expr><tab> pumvisible() ? "\<C-n>" : "\<tab>"
set completeopt-=preview

