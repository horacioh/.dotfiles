set path+=**

" Ignore files
set wildignore+=*/coverage/*
set wildignore+=*/node_modules/*
set wildignore+=*/.git/*


set scrolloff=8
set number
set relativenumber
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

" Plugins

call plug#begin('~/.vim/plugged') 

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


call plug#end()

" Remaps

nnoremap <silent> <C-f> :silent !tmux neww tmux-sessionizer<CR>
nnoremap <leader>x :silent !chmod +x %<CR>

let mapleader = " "

nnoremap <leader>pv :Vex<CR>


