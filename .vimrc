set nocompatible              " be iMproved, required

execute pathogen#infect()
" vim: se ff=unix :
autocmd BufRead,BufNewFile *txx set filetype=cpp
autocmd BufRead,BufNewFile *.mm set filetype=objcpp

" Should move me to directory of current working file
"set autochdir

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

set number
set relativenumber
set ruler
set nowrap
set smartcase
set autoindent
"set cmdheight=2
set noerrorbells
set wildmenu
set wildmode=list:longest

" Disable bells
set t_vb=

filetype plugin indent on
syntax enable
set background=dark

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set showmatch

" Set off the other paren
highlight MatchParen ctermbg=4

inoremap jk <Esc>

set hlsearch
set incsearch
set showcmd

" Folding Stuffs
set foldmethod=marker

" So backspace works
set backspace=indent,eol,start

" Needed for Syntax Highlighting and stuff
set grepprg=grep\ -nH\ $*

let mapleader = "\<Space>"

" Actually works with OS copy/paste buffer
nmap <Leader>y "+y
nmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>y "+y
vmap <Leader>d "+d
vmap <Leader>p "+p
vmap <Leader>P "+P

" Shift a bunch in visual
vmap > >gv
vmap < <gv

" Cause I'm frequently dumb
map q: :q

:nnoremap <Leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <Leader>sv :source $MYVIMRC<cr>

" Surround word/WORD with char
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
:nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
:nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel
:nnoremap <leader>) viW<esc>a)<esc>hBi(<esc>lel
:nnoremap <leader>{ viw<esc>a}<esc>hbi{<esc>lel
:nnoremap <leader>} viW<esc>a}<esc>hBi{<esc>lel
:nnoremap <leader>[ viw<esc>a]<esc>hbi[<esc>lel
:nnoremap <leader>] viW<esc>a]<esc>hBi[<esc>lel
:nnoremap <leader>< viw<esc>a><esc>hbi<<esc>lel
:nnoremap <leader>> viW<esc>a><esc>hBi<<esc>lel

" Find all tabs
:nnoremap <leader>t :s/\t<cr>

" Insert grouping
:cnoremap ;\ \(\)<Left><Left>

" Be an ass
:nnoremap <leader>g mgggg?G'g


if has("win32")
    "set shell=powershell
    set shell=cmd
    set shellcmdflag=/c
    set cc=140
    set gfn=Courier_New:h12:cANSI
    set bg=dark
    colorscheme desert
    set encoding=utf-8
endif


" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
"set viminfo^=%

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_elixir_checker = 1
let g:syntastic_enable_haskell_checker = 1
