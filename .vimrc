syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set belloff=all
set shiftwidth=4
set expandtab
set smartindent
set nu
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

call plug#begin('~/.vim/plugged')

Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'davidhalter/jedi-vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'sheerun/vim-polyglot'
Plug 'https://github.com/ervandew/supertab'

call plug#end()

colorscheme onehalflight
let g:airline_theme='onehalfdark'
let python_highlight_all=1
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
autocmd FileType python map <buffer> <C-9> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
