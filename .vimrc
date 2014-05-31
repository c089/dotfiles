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
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on
"-- Vundle setup end

"-- Configuration
set background=dark
colorscheme base16-bright
syntax enable

set smarttab
set expandtab
set shiftwidth=4
