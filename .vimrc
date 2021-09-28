set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set showtabline=2
set showcmd
set title

call plug#begin('~/.vim/plugged')

"Themes
Plug 'morhetz/gruvbox'

"IDE
Plug 'easymotion/vim-easymotion' 
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()


colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'



let NERDTreeQuitOnOpen=1



let g:minimap_auto_start=1
let g:minimap_width = 15



" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

let mapleader=' '

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>m :NERDTreeFind<CR>
nmap <Leader>e <C-\><C-n><CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>u :bnext<CR>
nmap <Leader>y :bprev<CR>
nmap <Leader>i :Prettier<CR>
nmap <C-p> :FZF<CR>
