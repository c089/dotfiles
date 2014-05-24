"-- Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-git'
Plugin 'altercation/vim-colors-solarized'


call vundle#end()
filetype plugin indent on
"-- Vundle setup end

"-- Configuration
syntax enable

set smarttab
set expandtab
set shiftwidth=4
