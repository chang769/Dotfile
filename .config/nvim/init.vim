" _   ___     _____ __  __ ____   ____
"| \ | \ \   / /_ _|  \/  |  _ \ / ___|
"|  \| |\ \ / / | || |\/| | |_) | |
"| |\  | \ V /  | || |  | |  _ <| |___
"|_| \_|  \_/  |___|_|  |_|_| \_\\____|


" Checkout-list
" vim-esearch
" fmoralesc/worldslice
" SidOfc/mkdx


" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif




" ===
" === Auto load vim configuration  
" ===
set runtimepath^=~.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
