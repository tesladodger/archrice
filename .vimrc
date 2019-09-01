" Settings
set autoindent
set cursorline
set number
set autoread
set noerrorbells
set visualbell
set noshowmode
set shortmess=atI
set hlsearch
set incsearch
set scrolloff=4
set wrapscan
set splitbelow
set splitright
set expandtab
set tabstop=4
set shiftwidth=4
set list
set encoding=utf-8
set background=dark


" Mappings
:map <up> <nop>
:map <down> <nop>
:map <left> <nop>
:map <right> <nop>

:imap jh <Backspace>
:imap jj <Esc>o
:imap jk <Esc>O
:imap jl <Esc>


" Pluggins
" commands:
"   PlugInstall [name ...] [#threads]
"   PlugUpdate [name ...] [#threads]
"   PlugUpgrade
"   PlugStatus
call plug#begin('~/.vim/plugged')

Plug 'dikiaap/minimalist'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


" Pluggin Settings

" Airline
let g:airline_theme='deus'
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1


set t_Co=256
syntax on
colorscheme minimalist
