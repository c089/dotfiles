" Installation notes: Before starting vim with this vimrc, run:
" $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Then launch vim and use :PluginInstall

"-- Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-git'

call vundle#end()
filetype plugin indent on
"-- Vundle setup end

"-- Configuration
syntax enable

set smarttab
set expandtab
set shiftwidth=4
