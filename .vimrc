" -------- "
" Settings "
" -------- "
set autoindent
set smartindent
set cindent
set autoread
set background=dark
set backspace=indent,eol,start
set cursorline
set encoding=utf-8
set expandtab       " replace tabs with spaces
set hlsearch
set incsearch       " show search matches while typing
set lazyredraw      " don't redraw while running macros, registers, or any non-typed commands
set list            " show tabs
set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵
set noerrorbells
set nomodeline
set noshowmode
set relativenumber  " relative line numbers
set scrolloff=4
set shiftwidth=4
set shortmess=atI
set splitbelow      " split below instead of over
set splitright      " vsplit right instead of left
set tabstop=4
set visualbell
set wrapscan
filetype plugin indent on

" Absolute number on command mode, back to relative on exit
au CmdLineEnter * set norelativenumber | set number   | redraw
au CmdLineLeave * set relativenumber   | set nonumber

" -------------------------- "
" Filetype specific settings "
" -------------------------- "
" tex - automatically insert newline at 90 chars
autocmd Filetype tex setlocal textwidth=90
" tex - compile (f4) in a split terminal
autocmd Filetype tex nnoremap <F4> :w<bar>term ++shell pdflatex %:p<CR>

" c - compile and run (F4) in a split terminal
autocmd filetype c nnoremap <F4> :w<bar>term ++shell gcc %:p -o %:p:r.out && %:p:r.out<CR>

" -------------- "
" File templates "
" -------------- "
augroup templates
    au!
    autocmd BufNewFile *.* silent! execute '0r ~/.vim/templates/skeleton.'.expand("<afile>:e")
augroup END

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
let g:syntastic_tex_checkers = ['lacheck']


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
