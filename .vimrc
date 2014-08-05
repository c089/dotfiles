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

" Install bundles
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'Shougo/Unite.vim'
NeoBundle 'vimwiki/vimwiki'
" vimproc bundle
let vimproc_updcmd = has('win64') ?
      \ 'tools\\update-dll-mingw 64' : 'tools\\update-dll-mingw 32'
execute "NeoBundle 'Shougo/vimproc.vim'," . string({
      \ 'build' : {
      \     'windows' : vimproc_updcmd,
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ })

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

set hlsearch

" Unite plugin configuration
call unite#filters#matcher_default#use(['matcher_fuzzy'])
let g:unite_source_history_yank_enable = 1
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts =
  \ '--line-numbers --nocolor --nogroup --hidden --ignore ' .
  \  '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
  let g:unite_source_grep_recursive_opt = ''
endif

" Unite key bindings
nnoremap [unite]   <Nop>
nmap <Space> [unite]
nnoremap <silent> [unite]f :<C-u>Unite -start-insert file_rec/async<cr>
nnoremap <silent> [unite]g :<C-u>Unite grep:.<cr>
nnoremap <silent> [unite]t :<C-u>Unite tab<cr>
nnoremap <silent> [unite]bu :<C-u>Unite buffer<cr>
nnoremap <silent> [unite]bo :<C-u>Unite bookmark<cr>
nnoremap <silent> [unite]y :<C-u>Unite history/yank<CR>

" VimWiki
let g:vimwiki_list = [{'path': '~/dev/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
