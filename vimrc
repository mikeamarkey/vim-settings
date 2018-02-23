" Plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim

" KEEP for testing input method
" if $(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist
" AppleSelectedInputSources | grep -q U\.S\.); then echo 1; fi;

call plug#begin('~/.vim/plugged')
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-unimpaired'
Plug 'joshdick/onedark.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'etaoins/vim-volt-syntax'
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
    \ },
    \ {
    \ 'pattern': '-',
    \ 'expanded': '.*',
    \ 'mode': 'pfrz',
    \ },
    \ {
    \ 'pattern': '_',
    \ 'expanded': '.*',
    \ 'mode': 'pfrz',
    \ }
 \ ]
\ }

let g:ctrlp_user_command =
  \ ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1

" Japanese Handling
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

" Substitute commands in normal mode
nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap お o
nnoremap っd dd
nnoremap っy yy

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

" Undo
if !isdirectory($HOME."/.vim")
  call mkdir($HOME."/.vim", "", 0770)
endif

if !isdirectory($HOME."/.vim/undo-dir")
  call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif

set undodir=~/.vim/undo-dir
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
set guifont=Ricty\ Diminished\ Regular:h16

" Colors
" joshdick/onedark.vim
syntax on
colorscheme onedark

" Functions
command! ReplaceLinuxMultilineCommand %s/\s\s\s/ \\\r  /
