" .vimrc
" my personal vim config
" set to work as a proper c/c++ ide
" May 09th, 2023
" ---
" includes the following
" * line numbers (relative)
" * move lines around
" * cmake project support
" * visual command prompt
" * syntax checking
" * multiple cursors
" * fuzzy finder
" * autocompletion
" * git support
" * workdir tree

" General vim configuration
let mapleader=","
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set guifont=Iosevka\ 20
set guioptions-=m
set guioptions-=T
set noesckeys
set relativenumber
set number
set ignorecase
set smartcase
set incsearch
set autochdir
set cursorline

" Shortcuts
nnoremap <A-j> :m+<CR>
nnoremap <A-k> :m-2<CR>
nnoremap <leader>nn :NERDTreeToggle<CR>
inoremap jk <Esc>

" Plugins selection
call plug#begin()
" General IDE experience
Plug 'preservim/nerdtree', { 'on' : 'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'widatama/vim-phoenix'
Plug 'terryma/vim-multiple-cursors'
Plug 'itchyny/lightline.vim'

" Dev utils
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'

" Languages integration

" icons should always be last
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Plugins configuration

set termguicolors
colorscheme phoenix
PhoenixBlueEighties

set laststatus=2

" NERDTree
autocmd VimEnter * NERDTree

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" terminal
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F10>'
