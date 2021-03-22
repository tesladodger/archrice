" -------- "
" Settings "
" -------- "
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set cursorline
set encoding=utf-8
set expandtab "replace tabs with spaces
set hlsearch
set incsearch "show search matches while typing
set lazyredraw "don't redraw while running macros, registers, or any non-typed commands
set list "show tabs
set noerrorbells
set nomodeline
set noshowmode
set number "line number
set relativenumber "relative line numbers
set scrolloff=4
set shiftwidth=4
set shortmess=atI
set splitbelow "split below instead of over
set splitright "vsplit right instead of left
set tabstop=4
set visualbell
set wrapscan
filetype plugin indent on

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
:nnoremap vt :vert term<CR>
:nnoremap tt :ter<CR>

:imap jh <Backspace>
:imap jj <Esc>o
:imap jk <Esc>O
:imap jl <Esc>

" automatic right bracket and tab
:inoremap {<CR> {<CR>}<ESC>O

" full substitution of visual selection
:xnoremap gs y:%s/<C-r>"//g<Left><Left>

" c main (type 'main' in normal mode)
autocmd Filetype c nnoremap main o<CR>int<Space>main<Space>(int<Space>argc,<Space>char*<Space>argv[])<Space>{<CR>}<ESC>O

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
Plug 'dense-analysis/ale'
Plug 'dikiaap/minimalist'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'

call plug#end()

" ---------------- "
" Pluggin Settings "
" ---------------- "

" Ale
" --------


" Airline
" --------
let g:airline_theme='deus'
let g:airline#extensions#ale#enabled = 1
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1

" YouCompleteMe
" --------
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" NerdTree
" --------
let g:NERDTreeShowHidden = 1
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
" Close vim when NERDTree is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" highlight script in ~/.vim/after/syntax/nerdtree.vim
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1


set t_Co=256
syntax on
colorscheme minimalist
