"  __     _____ __  __ ____   ____
"  \ \   / /_ _|  \/  |  _ \ / ___|
"   \ \ / / | || |\/| | |_) | |
"    \ V /  | || |  | |  _ <| |___
"     \_/  |___|_|  |_|_| \_\\____|
" 


" ===
" === Auto load for first time uses
" ===
" if empty(glob('~/.vim/autoload/plug.vim'))
"   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

call plug#begin('~/.vim/plugged')
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
set clipboard+=unnamedplus
set hlsearch
set incsearch
set mouse=a

let mapleader = ','
inoremap <leader>w <Esc>:w<cr>

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

let $TMPDIR=$HOME."/tmp"
