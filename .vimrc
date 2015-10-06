" ###############################################################
" ##### Vundle url https://github.com/VundleVim/Vundle.vim ######

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'rodjek/vim-puppet'
Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ##########################################################################################

let g:airline_powerline_fonts = 1
syntax enable
set background=dark
colorscheme solarized
set number
set ruler
set laststatus=2
set backspace=2
set noautoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set ignorecase
set smartcase
set list listchars=tab:»·,trail:·,nbsp:·
set hidden

" ####### jedi-vim #######
let g:jedi#auto_initialization = 0
let g:jedi#use_splits_not_buffers = "right"

" ####### SYNTAX #########
let g:syntastic_python_flake8_args='--ignore=E501,E251'
let g:syntastic_puppet_checkers = ['puppetlint']

" ####### HOTKEYS ########
let mapleader = ','
map <F2> :NERDTreeToggle<CR>

" ##### airline #####
let g:airline#extensions#tabline#enabled = 1

" ###### default very magic #######
nnoremap / /\v
vnoremap / /\v
cnoremap %s/ %smagic/
cnoremap \>s/ \>smagic/
nnoremap :g/ :g/\v
nnoremap :g// :g//
