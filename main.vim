set nocompatible
set cindent
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

set number " line numbers
set showcmd
set cursorline " underline in current line

filetype indent on
set showmatch " highlight matching {[()]}

set incsearch " search as you type
set hlsearch " highlight matches

" turn off search highligh 
nnoremap <leader><space> :nohlsearch<CR>

" discolor line numbers
" highlight LineNr ctermfg=grey

" remapping ; into :
nore ; :
nore , ;

" required by Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage vundle
Plugin 'VundleVim/Vundle.vim'

" solarized colors
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-commentary'
Plugin 'raimondi/delimitmate'
Plugin 'junegunn/limelight.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'vim-scripts/nginx.vim'
Plugin 'mhinz/vim-startify'

" end vundle plugins
call vundle#end()
filetype plugin indent on

" set colorscheme
syntax enable
set background=dark

let g:solarized_visibility='low'
let g:solarized_termcolors=256
colorscheme solarized

" airline fix
let g:airline_powerline_fonts = 1
set laststatus=2

" limelight + goyo integration
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:limelight_conceal_ctermfg = 240

" auto search for tags
set tags=./tags

" key mappings:
" F9: make
map <F9> :make<CR>
