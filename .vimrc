">_ Customizations for the vim editor. Read more at https://github.com/dawsbot/vimrc-builder

set number " Show absolute line numbers on the left.
filetype plugin on " Auto-detect un-labeled filetypes
syntax on " Turn syntax highlighting on
set ai " Sets auto-indentation
set si " Sets smart-indentation
set cursorline " Highlight current cursor line
set cursorcolumn " Highlight current cursor column
set tabstop=4 " Tab equal 2 spaces (default 4)
set shiftwidth=4 " Arrow function (>>) creates 2 spaces
set expandtab " Use spaces instead of a tab charater on TAB
set smarttab " Be smart when using tabs
set hlsearch " When searching (/), highlights matches as you go
set incsearch " When searching (/), display results as you type (instead of only upon ENTER)
set ignorecase " When searching (/), ignore case entirely
set smartcase " When searching (/), automatically switch to a case-sensitive search if you use any capital letters
set ttyfast " Boost speed by altering character redraw rates to your terminal
set showmatch " Show matching brackets when text indicator is over them
set completeopt-=preview 

call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
call plug#end()


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Valloric/YouCompleteMe'
Plugin 'preservim/nerdtree'
call vundle#end() 

" YouCompleteMe Configurations 
let g:ycm_global_ycm_extra_conf = '/home/msaad/Repositories/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 1

syntax enable
colorscheme nord

" Copy/Paste keybindings to " register
vnoremap <C-c> "+y
vnoremap <C-p> "+p
