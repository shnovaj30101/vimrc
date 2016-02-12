set nu
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
nmap <F5> i#include<iostream><Enter><ENter>using<Space>namespace<Space>std;<Enter><Enter>int<Space>main(<Right><Space>{<Enter><Enter><Esc>ki<Space><Space><Space><Space>
imap { {}<Left>
imap ( ()<Left>
imap ;; <Esc>
imap <C-h> <Left>
imap <C-k> <Up>
imap <C-j> <Down>
imap <C-l> <Right>
"nmap <>

"""""""""""""""  Functions """""""""""""""

"function move_like_insert_mode()
"   if len(getline('.'))== 
"endfunction


"""""""""""""""  Some Note """""""""""""""
"
" :highlight : look up the color matching in vim
"
"
