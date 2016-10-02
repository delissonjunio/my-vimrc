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

if (has("termguicolors"))
  set termguicolors
endif

syntax enable
colorscheme tender

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
highlight LineNr ctermfg=grey

" remapping ; into :
nore ; :
nore , ;

" a.vim plugin
source ~/.vim/plugins/a.vim

" configuring the status line
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P
