" Settings
set nocompatible
set autoindent     " Copy indent from last line;
set cursorline	   " Highlight current line;
set number         " Line number;
set autoread       " Read when file is changed elsewhere;
set noerrorbells   " Turn off audio errors;
set visualbell     " Turn on visual errors;
set noshowmode     " Mode will be displayed by airline;
set shortmess=atI  " Turn off intro message;
set hlsearch       " Highlight searches;
set incsearch      " Highlight as search is typped;
set scrolloff=4    " Start scrolling before eof;
set wrapscan       " Wrap search at eof;
set splitbelow     " Horizontal splits open below current window;
set splitright     " Vertical splits open right of new window;
set tabstop=4      " Tabs are 4 characters wide;
set shiftwidth=4   " An indent equals a single tab;
set list           " Show tabs;

" Mappings
:map <up> <nop>
:map <down> <nop>
:map <left> <nop>
:map <right> <nop>
:imap <up> <nop>
:imap <down> <nop>
:imap <left> <nop>
:imap <right> <nop>
:imap jh <Backspace>
:imap jj <Esc>o
:imap jk <Esc>O
:imap jl <Esc>
:inoremap <F2> <esc>mm$a;<esc>`ma
:nnoremap <F2> <esc>mm$a;<esc>`m
:nnoremap <space> :b#<CR>
:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-L> <C-W><C-L>
:nnoremap <C-H> <C-W><C-H>

" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'dikiaap/minimalist'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'Shougo/deoplete.nvim'
Plug 'tpope/vim-surround'
call plug#end()

" Colors
set t_Co=256
syntax on
set encoding=utf-8
colorscheme minimalist

" Polyglot
let g:polyglot_disabled = ['latex']

" Airline
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" indentLine
let g:indentLine_color_term = 59
let g:indentLine_char = '┆'

" Deoplete
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option({
    \ 'smart_case': v:true,
    \ 'max_list': 20,
\ })
