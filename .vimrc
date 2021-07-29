set number " Show absolute line numbers on the left.
filetype plugin on " Auto-detect un-labeled filetypes
syntax on " Turn syntax highlighting on
set ai " Sets auto-indentation
set si " Sets smart-indentation
set cursorline " Highlight current cursor line
set tabstop=4 " Tab equal 2 spaces (default 4)
set shiftwidth=4 " Arrow function (>>) creates 2 spaces
set expandtab " Use spaces instead of a tab charater on TAB
set smarttab " Be smart when using tabs
set hlsearch " When searching (/), highlights matches as you go
set incsearch " When searching (/), display results as you type (instead of only upon ENTER)
set ignorecase " When searching (/), ignore case entirely
set smartcase " When searching (/), automatically switch to a case-sensitive search if you use any capital letters
set ttyfast " Boost speed by altering character redraw rates to your t
set relativenumber 
set cmdheight=1
set completeopt-=preview " Remove preview from ycm
set pumheight=10
set encoding=UTF-8

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mhinz/vim-startify'
Plugin 'valloric/youcompleteme'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'yggdroot/indentline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ryanoasis/vim-devicons'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'vim-airline/vim-airline'
call vundle#end()            " required
filetype plugin indent on    " required

" Theme Settings
let g:dracula_colorterm = 0
colorscheme dracula

" Enable 256 colors instead of base 16
set t_Co=256
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" ycm c++
let g:ycm_semantic_triggers = {
        \   'cpp': [ 're!\w{1}' ]
    \ }

" airline powerline
let g:airline_powerline_fonts = 1

" Startify settings 
let g:startify_custom_header = [
 \ '   ██╗    ██╗██╗████████╗ ██████╗██╗  ██╗ ██████╗██████╗  █████╗ ███████╗████████╗███████╗',
 \ '   ██║    ██║██║╚══██╔══╝██╔════╝██║  ██║██╔════╝██╔══██╗██╔══██╗██╔════╝╚══██╔══╝██╔════╝',
 \ '   ██║ █╗ ██║██║   ██║   ██║     ███████║██║     ██████╔╝███████║█████╗     ██║   ███████╗',
 \ '   ██║███╗██║██║   ██║   ██║     ██╔══██║██║     ██╔══██╗██╔══██║██╔══╝     ██║   ╚════██║',
 \ '   ╚███╔███╔╝██║   ██║   ╚██████╗██║  ██║╚██████╗██║  ██║██║  ██║██║        ██║   ███████║',
 \ '    ╚══╝╚══╝ ╚═╝   ╚═╝    ╚═════╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝        ╚═╝   ╚══════╝',
 \]
let g:startify_lists = [
      \ { 'header': ['   Bookmarks'],       'type': 'bookmarks' },
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ ]
let g:startify_bookmarks = [
  \ { 'z': '~/.zshrc' },
  \ { 'v': '~/.vimrc' },
  \ { 'm': '~/Playground/cp/main.cpp' },
  \ { 'c': '~/.config/i3/config' },
  \ ]

