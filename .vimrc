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
" Plugin 'tpope/vim-commentary'

" All of your Plugins must be added before the following line
"" call vundle#end()            " required

filetype plugin indent on    " required

" Tab settings and autoindent.
au BufNewFile,BufRead *.py
   \ set tabstop=4
   \ softtabstop=4
   \ shiftwidth=4
   \ textwidth=79
   \ expandtab
   \ autoindent

" Modernize.
syntax on
set nu
set modeline
set encoding=utf-8
set fileformat=unix
" Print column numbers.
set ruler

" Make things better.
" set encoding=utf-8
" set scrolloff=3
" set autoindent
" set showmode
" set showcmd
" set hidden
" set wildmenu
" set wildmode=list:longest
" set visualbell
" set cursorline
" set ttyfast
" set ruler
" set backspace=indent,eol,start
" set laststatus=2
" set relativenumber
" set undofile

" Enable code folding.
" set foldmethod=indent
" set foldlevel=99

" Flagging trailing withespace.
" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red
"au BufRead,BufNewFile *.py BadWhiteSpace /\s\+$/
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

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

" Re-maps, default leader: \.
" Underline line.
nnoremap <leader>- yypVr-

" Pathogen runtime path manipulation.
execute pathogen#infect()

" Add vim-commentary support for python files.
autocmd FileType python setlocal commentstring=#\ %s

" Map and source .vimrc.
map <leader>vimrc :tabe ~/.vimrc<cr>
autocmd bufwritepost .vimrc source $MYVIMRC

