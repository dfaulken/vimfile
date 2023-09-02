set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround.git'
call vundle#end()
filetype plugin indent on

inoremap jk <ESC>l

set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set number
set ignorecase
set ruler
set smartcase
set nobackup
set noswapfile
set smartindent
set number
set nowrap
set timeoutlen=80
