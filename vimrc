
"""""" the vundle config 
set nocompatible              " be iMproved, required
filetype off                  " required 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin() " alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'chemzqm/vim-jsx-improve'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/taglist.vim'
"Plugin 'vim-scripts/Visual-Mark'
"Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()
filetype plugin indent on     " required



""""" filetype setting
filetype plugin indent on 
au BufNewFile,BufRead *.ejs set filetype=html


""""" arrow key setting
imap <C-h> <Left>
imap <C-k> <Up>
imap <C-j> <Down>
imap <C-l> <Right>
noremap <expr> j ((v:count == 0) ? 'gj' : 'j') 
noremap <expr> k (v:count == 0 ? 'gk' : 'k')
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP> 


""""" indent and space
set ai " new_line add indent as prev line 
set backspace=2 " :set backspace=indent,eol,start, trivial not important
set expandtab " space replace tab
set tabstop=4 " a tab for 4 space distance
set shiftwidth=4 " 4 space for indent
set softtabstop=4 " trivial and complex, not important
set smarttab " see :h smarttab


""""" display format
set nu
set relativenumber
set background=dark
set cursorline
set cursorcolumn
hi cursorline term=reverse cterm=NONE ctermbg=0 guibg=Grey40
set statusline=%<%F%h%m%r\ %{strftime(\"%Y/%m/%d-%H:%M\")}%=\ [%l,%v][%p%%]\ ascii:%b\ 
set ruler " show the cursor position in status line
set hlsearch 
syntax on " color on code


""""" code folding
cabbrev foi set foldmethod=indent foldnestmax=1
cabbrev fom set foldmethod=marker foldnestmax=1
cabbrev fos set foldmethod=syntax foldnestmax=1


""""" some shorcut in insert-mode
imap { {}<Left>
imap ( ()<Left>
imap [ []<Left>


""""" other setting
let mapleader=","
vnoremap . *<ESC>
set clipboard^=unnamed,unnamedplus " use the system clipboard, two value means cross-platform effect
set ic " ignore case
set pastetoggle=<F12>
set incsearch
set ls=2
set mouse=a
map <Leader>w <ESC>:w<CR>
map <Leader>q <ESC>:q<CR>
map <Leader>wq <ESC>:wq<CR>

""""" ctags
map <space>] <C-]>
map <space>t <C-t>
map <space>n <ESC>:tn<CR>
map <space>p <ESC>:tp<CR>



""""" NERDTree
nnoremap <silent> <F5> :NERDTree<CR>
let mapleader=","
map <Space>j <C-w>j
map <Space>h <C-w>h
map <Space>k <C-w>k
map <Space>l <C-w>l
map <Space>w <C-w>w


""""" vim-signature
nmap <F2> ]'
nmap <F3> ['


""""" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
"let g:copycat#auto_sync = 1

""""" taglist
map <f9> :Tlist<CR>



"" 随 vim 自启动
"let g:indent_guides_enable_on_vim_startup=1
"" 从第二层开始可视化显示缩进
"let g:indent_guides_start_level=1
"" 色块宽度
"let g:indent_guides_guide_size=1
"" 快捷键 i 开/关缩进可视化
"nmap <silent> <Leader>i <Plug>IndentGuidesToggle



