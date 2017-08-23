"" Initialization
set nocompatible

set modelines=0

" Plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim

call plug#begin('~/.vim/plugged')
Plug 'KeitaNakamura/neodark.vim'
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

" List
" set list
" set listchars=tab:▸\ ,eol:¬

" Autosave
" au Focuslost * :wa
au BufWritePre * %s/\s\+$//e

" Colors
let g:neodark#terminal_transparent = 1 " default: 0
colorscheme neodark
