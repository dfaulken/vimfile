set nocompatible               " be iMproved

filetype off                   " required!
let mapleader = ","
nnoremap <leader><space> :noh<cr>
" eliminate pressing Shift for commands
nnoremap ; :
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j
nnoremap <leader>f :CtrlP<CR>
nmap <Tab> %
vmap <Tab> %
inoremap jk <ESC>l
nnoremap <leader>i gg=G''
nnoremap <leader>de gg"_dG
" use Y to yank to end of line
nnoremap Y y$
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

cmap w!! w !sudo tee > /dev/null %
set t_Co=256
set background=dark
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set number
set ignorecase
set ruler
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set nobackup
set noswapfile
set smartindent
set hidden
set wildmenu
set number
set nowrap
set cm=blowfish
set timeoutlen=100
set backspace=indent,eol,start
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/ctrlp.vim
let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 0
set guifont=Inconsolata:h12:cANSI
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,*.prawn,*.rake} set ft=ruby
call vundle#begin()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-endwise.git'
Bundle 'tpope/vim-surround.git'
Bundle 'tpope/vim-repeat.git'
Bundle 'tpope/vim-haml.git'
Bundle 'vim-ruby/vim-ruby.git'
Bundle 'digitaltoad/vim-jade.git'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'jiangmiao/auto-pairs.git'
Bundle 'kien/ctrlp.vim'
Bundle 'duff/vim-scratch.git'
Bundle 'flazz/vim-colorschemes'
Bundle 'vim-misc'
Bundle 'vim-colorscheme-switcher'
" vim-scripts repos
Bundle 'bufexplorer.zip'
Bundle 'HTML-AutoCloseTag'
Bundle 'matchit.zip'
Bundle 'ruby-matchit'
Bundle 'Rename2'

call vundle#end()

" Pick a random colorscheme
autocmd VimEnter * RandomColorScheme

syntax enable
filetype plugin indent on     " required!
filetype indent on
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
