execute pathogen#infect()
set nocompatible
set number
set expandtab
set autoindent
syntax on
filetype plugin indent on

" close vim if the nerdtree is the only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

