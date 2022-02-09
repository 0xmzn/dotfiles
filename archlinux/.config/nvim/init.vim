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
Plug 'chriskempson/base16-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vimwiki/vimwiki'
Plug 'chrisbra/colorizer'
call plug#end()

colorscheme base16-tomorrow-night
highlight Normal guibg=none

"#let g:lightline = {
"#      \ 'colorscheme': 'gruvbox',
"#      \ }

let mapleader=" "
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap y "+y
vnoremap y "+y
nnoremap Y gg"+yG

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

let g:vimwiki_list = [{'path':'~/docs/.vimwiki', 'syntax': 'markdown'}]


" Splits
set splitbelow splitright

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

