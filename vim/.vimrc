let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

syntax enable
filetype plugin indent on

"
" Settings
" 
set noerrorbells
set noswapfile
set nobackup
set nowritebackup
set splitright
set splitbelow
set autowrite
set autoread
set nocompatible
scriptencoding utf-8
set encoding=utf-8
set showcmd
set list listchars=tab:\›\ ,trail:-,extends:>,precedes:<,eol:¬
set cursorline
set linespace=3
set number
set laststatus=2
set hidden

set ruler

set fileformats=unix,dos,mac

set noshowmode

" No more pause on status bar after leaving insert mode
set ttimeoutlen=50

" Whitespace
set nowrap
set tabstop=2 shiftwidth=2 expandtab
set backspace=indent,eol,start

set scrolloff=8

let mapleader = ","

" Fast saves
nmap <leader>w :w!<cr>

" Easymotion mappings
nmap <leader><leader>s <Plug>(easymotion-s2)
nmap <leader><leader>t <Plug>(easymotion-t2)
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)
map <leader><leader>l <Plug>(easymotion-lineforward)
map <leader><leader>j <Plug>(easymotion-j)
map <leader><leader>k <Plug>(easymotion-k)
map <leader><leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
highlight Normal          guibg=NONE    ctermbg=NONE
highlight LineNr          guifg=#949494 ctermfg=246 guibg=NONE    ctermbg=NONE
highlight CursorLineNr    guifg=#ffffff ctermfg=15  guibg=NONE    ctermbg=NONE
highlight CursorLine      guibg=#1c1c1c ctermbg=234 cterm=NONE
highlight NonText         guifg=#585858 ctermfg=240
highlight SpecialKey      guifg=#585858 ctermfg=240

let g:airline_theme='deus'
let g:airline_powerline_fonts=1
" let g:airline#extensions#whitespace#enabled=0

