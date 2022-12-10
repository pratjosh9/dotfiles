set scrolloff=8
set number
set relativenumber

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set colorcolumn=80 " color column at line no 80

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox' " gruvbox theme
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

set termguicolors

let g:gruvbox_constrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

let g:gruvbox_invert_selection='0'

set background=dark " setting dark mode
colorscheme gruvbox

let g:lsp_diagnostics_enabled=1
let g:lsp_diagnostics_echo_cursor=1

let mapleader= " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR>:so ~/.vim/vimrc
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-k> :cnext<CR>
nnoremap <C-j> :cprev<CR>
nnoremap <C-E> :copen<CR>

" Hard Mode
nnoremap <Left> :echo "Use l for left"<CR>
vnoremap <Left> :echo "Use l for left"<CR>
inoremap <Left> <C-o>:echo "Use l for left"<CR>

nnoremap <Right> :echo "Use h for right"<CR>
vnoremap <Right> :echo "Use h for right"<CR>
inoremap <Right> <C-o>:echo "Use h for right"<CR>

nnoremap <Up> :echo "Use k for up"<CR>
vnoremap <Up> :echo "Use k for up"<CR>
inoremap <Up> <C-o>:echo "Use k for up"<CR>

nnoremap <Down> :echo "Use j for down"<CR>
vnoremap <Down> :echo "Use j for down"<CR>
inoremap <Down> <C-o>:echo "Use j for down"<CR>
