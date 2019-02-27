set encoding=utf-8
set nocompatible              " required
filetype off                  " required
set noshowmode

set nu
set shell=/usr/bin/zsh
set clipboard=unnamed
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
Plugin 'morhetz/gruvbox'

call vundle#end()            " required
filetype plugin indent on    " required
"split navigations

" Navigate through tabs
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

noremap <C-t><up> :tabr<cr>
noremap <C-t><down> :tabl<cr>
noremap <C-t><left> :tabp<cr>
noremap <C-t><right> :tabn<cr>
" Remove arrow keys functionality
noremap <Right> <Nop>
noremap <Left> <Nop>
noremap <Down> <Nop>
noremap <Up> <Nop>

" autoclose without plugin
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

colorscheme gruvbox

" airline configs
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
set clipboard=unnamed
set background=dark    " Setting dark mode

hi Normal ctermbg=none
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

