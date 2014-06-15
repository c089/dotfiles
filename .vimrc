" Installation notes: Before starting vim with this vimrc, run:
" $ curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
" vim should ask to install bundles on startup, otherwise use :NeoBundleInstall

" NeoBundle setup
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" My bundles
NeoBundle 'tpope/vim-git'
NeoBundle 'chriskempson/base16-vim'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck
" NeoBundle setup end

"-- Configuration
set background=dark
colorscheme base16-bright
syntax enable

set smarttab
set expandtab
set shiftwidth=4
