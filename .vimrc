set nocompatible              

filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'davidhalter/jedi-vim'

Plugin 'scrooloose/nerdtree'

Plugin 'nightsense/simplifysimplify'

Plugin 'airblade/vim-gitgutter'

Plugin 'vim-airline/vim-airline'

Plugin 'altercation/vim-colors-solarized'

call vundle#end()            

filetype plugin indent on    

"Configuração NerdTree

"Open NerdTree when openning dir
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"Set an shortcut for toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Theme
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

syntax on
set number
set encoding=utf8
set tabstop=4
set expandtab
set hlsearch 



