syntax on

set nu
set relativenumber
set nohlsearch
set hidden
set tabstop=4 softtabstop=4
set belloff=all
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set t_Co=256
set cursorline
set nocompatible
set noerrorbells
set scrolloff=8
set signcolumn=yes
set encoding=utf-8


call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'mfukar/robotframework-vim' 
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'sheerun/vim-polyglot'
"Plug 'Valloric/YouCompleteMe'

"Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
"Plug 'Vimjas/vim-python-pep8-indent'
"Plug 'https://github.com/ervandew/supertab'
Plug 'davidhalter/jedi-vim'
call plug#end()

colorscheme gruvbox
set background =dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>


"nnoremap <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"nnoremap <leader>gd :YcmCompleter GoTo<CR>
"nnoremap <leader>gf :YcmCompleter GoToSymbol<CR>
"nnoremap <leader>gh :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>ru :!python3 %<CR>

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
let g:Powerline_symbols = 'fancy'
