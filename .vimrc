"  __     _____ __  __ ____   ____
"  \ \   / /_ _|  \/  |  _ \ / ___|
"   \ \ / / | || |\/| | |_) | |
"    \ V /  | || |  | |  _ <| |___
"     \_/  |___|_|  |_|_| \_\\____|
" 


" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'https://github.com/tpope/vim-fugitive.git' " Git integration
Plug 'junegunn/gv.vim' " Git log
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/Yggdroot/LeaderF.git'
Plug 'https://github.com/skywind3000/asyncrun.vim.git'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'francoiscabrol/ranger.vim'
call plug#end()
" --------------------------------------------------------------
"  editor setup-------------------------------------------------
"  -------------------------------------------------------------

set nocompatible

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set number                     " Show current line number
set relativenumber             " Show relative line numbers
set ruler
set cursorline
syntax enable
syntax on
set encoding=utf-8
set pastetoggle=<F2>
set clipboard=unnamed
set hlsearch
set incsearch
set mouse=a

let mapleader = ','
inoremap <leader>w <Esc>:w<cr>

func SetTitle()
    if &filetype == 'python'
        call setline(1, "\#!/user/bin/env python")
        call setline(2, "\# -*- coding:utf-8 -*-")
        normal G
        normal o
        normal o
        call setline(5, "if __name__ == 'main':")
        call setline(6, "   pass")
    endif
endfun

inoremap <Up> <Nop>
nnoremap <Up> <Nop>
inoremap <Down> <Nop>
nnoremap <Down> <Nop>
inoremap <Left> <Nop>
nnoremap <Left> <Nop>
inoremap <Right> <Nop>
nnoremap <Right> <Nop>
inoremap jk <Esc>
inoremap <Ese> <Nop>

" use system clipboard
" https://anuragpeshne.github.io/essays/vim/7.html
noremap y "+y
noremap yy "+yy
noremap y "+y$
noremap x "+x
noremap dd "+dd
noremap D "+D


" In insert or command mode, move normally by using Ctrl
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>


