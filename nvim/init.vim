" Settings
set nocompatible
set autoindent
set cursorline
set number
set autoread
set noerrorbells
set visualbell
set noshowmode

" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'dikiaap/minimalist'
Plug 'vim-airline/vim-airline'
call plug#end()

" Colors
set t_Co=256
syntax on
set encoding=utf-8
colorscheme minimalist

" Airline
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
