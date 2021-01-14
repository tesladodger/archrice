" -------- "
" Settings "
" -------- "
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set cursorline
set encoding=utf-8
set expandtab
set hlsearch
set incsearch
set lazyredraw
set list
set noerrorbells
set noshowmode
set number
set scrolloff=4
set shiftwidth=4
set shortmess=atI
set splitbelow
set splitright
set tabstop=4
set visualbell
set wrapscan

"Automatically insert newline in LaTeX
autocmd Filetype tex setlocal textwidth=90

" -------- "
" Mappings "
" -------- "
:map <up> <nop>
:map <down> <nop>
:map <left> <nop>
:map <right> <nop>

:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-L> <C-W><C-L>
:nnoremap <C-H> <C-W><C-H>

:imap jh <Backspace>
:imap jj <Esc>o
:imap jk <Esc>O
:imap jl <Esc>

:inoremap {<CR> {<CR>}<ESC>O

" full substitution of visual selection
:xnoremap gs y:%s/<C-r>"//g<Left><Left>

" -------- "
" Pluggins "
" -------- "
" commands:
"   PlugInstall [name ...] [#threads]
"   PlugUpdate [name ...] [#threads]
"   PlugUpgrade
"   PlugStatus
call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'
Plug 'dikiaap/minimalist'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" ---------------- "
" Pluggin Settings "
" ---------------- "

" Airline
let g:airline_theme='deus'
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

set t_Co=256
syntax on
colorscheme minimalist
