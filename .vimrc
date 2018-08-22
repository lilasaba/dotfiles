set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"" set rtp+=~/.vim/bundle/Vundle.vim
"" call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"" Plugin 'VundleVim/Vundle.vim'
" plugin youcompleteme
"" Plugin 'Valloric/YouCompleteMe'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
"" call vundle#end()            " required

filetype plugin indent on    " required

" Other.
syntax on
set nu
set modeline
set encoding=utf-8
set fileformat=unix
" Print column numbers.
set ruler
" Match parentheses.
" DoMatchParen

" Set py3 interpreter.
" let g:ycm_python_library_path='~/anaconda3/bin'

" Close preview window after autocompletion.
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1

" Enable code folding.
" set foldmethod=indent
" set foldlevel=99

" Flagging trailing withespace.
" au BufRead,BufNewFile *.py BadWhiteSpace /\s\+$/

" Add template for .py files.
if has("autocmd")
	augroup templates
		autocmd BufNewFile *.py 0r ~/.vim/templates/skeleton.py
	augroup end
endif

" Re-map moving around splits shortcuts.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Pathogen runtime path manipulation.
execute pathogen#infect()

" Map and source .vimrc.
map <leader>vimrc :tabe ~/.vimrc<cr>
autocmd bufwritepost .vimrc source $MYVIMRC


" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
