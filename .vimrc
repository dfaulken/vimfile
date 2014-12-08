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
" for FactoryGirl test suites
" honestly pretty specialized for our app
nmap tt :%s/, /,\r<cr>:%s/FactoryGirl./<cr>ggVG=

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
set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/ctrlp.vim
set guifont=Inconsolata:h12:cANSI
autocmd FileType tex set textwidth=80
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
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'duff/vim-scratch.git'
colorscheme evening
" vim-scripts repos
Bundle 'bufexplorer.zip'
Bundle 'HTML-AutoCloseTag'
Bundle 'matchit.zip'
Bundle 'ruby-matchit'
Bundle 'Rename2'

syntax enable
filetype plugin indent on     " required!
filetype indent on
" highlight any lines you've added to which are longer than 80 characters.
highlight OverLength ctermbg=darkred ctermfg=white guibg=#502929
match OverLength /\%81v.\+/
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
