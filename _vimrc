" ------------------------------
" Name: vimrc for windows
" Author: Eric Xie
" Email: eric_xiett@163.com
" ------------------------------

" 判断操作系统
if (has("win32") || has("win64") || has("win32unix"))
    let g:isWin = 1
else
    let g:isWin = 0
endif

" ------------------------------
" General
" ------------------------------
" Syntax highlight
syntax enable 
syntax on
" Indentation
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set foldmethod=indent
" no backup & wrap
set nobackup
set noswapfile
" Color Schema
colorscheme desert
" encoding
if (g:isWin)
    let &termencoding=&encoding " 通常win下的encoding为cp936
    set fileencodings=utf8,cp936,ucs-bom,latin1
else
    set encoding=utf8
    set fileencodings=utf8,gb2312,gb18030,ucs-bom,latin1
endif

" Backspace enable
set backspace=indent,eol,start

" Full screen after starting
autocmd GUIEnter * simalt ~x

"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>

" ------------------------------
" Plugin management
" ------------------------------
" Use Vundle
set nocompatible
filetype off 

" set the runtime path to include Vundle and initialize
set rtp+=%USERPROFILE%/vimfiles/bundle/Vundle.vim/
call vundle#begin('%USERPROFILE%/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
