set number
set relativenumber
set incsearch
set nohlsearch
set ignorecase
set smartcase
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set noerrorbells
set scrolloff=8
set termguicolors
filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'vimwiki/vimwiki'
call plug#end()

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

let mapleader=" "
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap y "+y
vnoremap y "+y
nnoremap Y gg"+yG

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

let g:vimwiki_list = [{'path':'~/documents/.vimwiki'}]
let g:vimwiki_hl_cb_checked = 1
