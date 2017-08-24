" Plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim

call plug#begin('~/.vim/plugged')
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-unimpaired'
Plug 'joshdick/onedark.vim'
Plug 'kchmck/vim-coffee-script'
call plug#end()

" CtrlP
let g:ctrlp_regexp = 1

let g:ctrlp_abbrev = {
  \ 'gmode': 't',
  \ 'abbrevs': [
    \ {
    \ 'pattern': ' ',
    \ 'expanded': '.*',
    \ 'mode': 'pfrz',
    \ }
  \ ]
\ }

let g:ctrlp_user_command =
  \ ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1

" Cancel IME
if has('mac')
  set ttimeoutlen=1
  let g:imeoff = 'osascript -e "tell application \"System Events\" to key code 102"'
  augroup MyIMEGroup
    autocmd!
    autocmd InsertLeave * :call system(g:imeoff)
  augroup END
  noremap <silent> <ESC> <ESC>:call system(g:imeoff)<CR>
endif

" Initialization
set nocompatible

set modelines=0

" Beginner Things
nnoremap <up> <nop>
nnoremap <right> <nright>
nnoremap <down> <ndown>
nnoremap <left> <nleft>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap ; :

" Tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Defaults
set encoding=utf-8
set scrolloff=6
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast

set number
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile

" Search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Formatting
set wrap
set textwidth=80
set formatoptions=qrn1
set colorcolumn=85
au BufWritePre * %s/\s\+$//e

" Colors
" joshdick/onedark.vim
syntax on
colorscheme onedark
