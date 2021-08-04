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
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'
call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

let mapleader=" "
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>lb <cmd>Telescope buffers<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap y "+y
vnoremap y "+y
nnoremap Y gg"+yG

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

fun! TrimWhiteSpace()
    let l:save= winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup THE_PRIMEAGEN
    autocmd!
    autocmd BufWritePre * :call TrimWhiteSpace()
augroup END
