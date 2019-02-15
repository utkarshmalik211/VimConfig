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
Plugin 'tomasiser/vim-code-dark'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'Yggdroot/indentLine'

call vundle#end()            " required
filetype plugin indent on    " required
"split navigations

" Navigate through tabs
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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

colorscheme codedark

" airline configs
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled = 1
set clipboard=unnamed


let t:is_transparent = 0
function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let t:is_transparent = 1
    else
        set background=dark
        let t:is_tranparent = 0
    endif
endfunction
nnoremap <C-t> : call Toggle_transparent()<CR>
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

