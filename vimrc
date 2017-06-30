set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on     " required

set nu
set relativenumber
set background=dark
set ruler
set ai
syntax on
set ic
set expandtab
set tabstop=4
set shiftwidth=2
set smarttab
set hlsearch
set pastetoggle=<F12>
set incsearch
set cursorline
set cursorcolumn
hi cursorline term=reverse cterm=NONE ctermbg=0 guibg=Grey40
set ls=2
set statusline=%<%F%h%m%r\ %{strftime(\"%Y/%m/%d-%H:%M\")}%=\ [%l,%v][%p%%]\ ascii:%b\ 
"cmap cpp i#include<iostream><Enter><ENter>using<Space>namespace<Space>std;<Enter><Enter>int<Space>main(<Right><Space>{<Enter><Enter><Esc>ki<Space><Space><Space><Space>
imap { {}<Left>
imap ( ()<Left>
imap ;; <Esc>
imap <C-h> <Left>
imap <C-k> <Up>
imap <C-j> <Down>
imap <C-l> <Right>
set mouse=a
"noremap j ((v:count == 0) ? 'gj' : 'j') 
"noremap k (v:count == 0 ? 'gk' : 'k')

nnoremap <silent> <F5> :NERDTree<CR>
let mapleader=","

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'


"""""""""""""""  Functions """""""""""""""

"function move_like_insert_mode()
"   if len(getline('.'))== 
"endfunction


"""""""""""""""  Some Note """""""""""""""
"
" :highlight : look up the color matching in vim
"
"
