syntax on

set noerrorbells
set tabstop=4 softtabstop=4
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


call plug#begin('~/.vim/plugged')

Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'nvie/vim-flake8'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

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

au BufNewFile,BufRead *.py
    \ set expandtab       |" replace tabs with spaces
    \ set autoindent      |" copy indent when starting a new line
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \set encoding=utf-8


function MyCustomHighlights()
    hi semshiGlobal      ctermfg=red guifg=#ff0000
endfunction
autocmd FileType python call MyCustomHighlights()

autocmd ColorScheme * call MyCustomHighlights()
