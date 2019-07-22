set nocompatible
filetype off
filetype plugin on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'pbondoer/vim-42header'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

filetype plugin indent on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

:command NT NERDTree

inoremap jj <ESC>

inoremap ( ()<left>
inoremap { {}<left><enter><enter><up><tab>
inoremap [ []<left>
inoremap " ""<left>
inoremap <F2> if ()<left>
inoremap <F3> else if ()<left>
inoremap <F4> else<enter>
inoremap <F5> while ()<left>
inoremap <F6> if (!( = ()malloc(sizeof() * )))<enter>return ();<up><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <F10> return ();<left><left>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-P> <C-W><C-W>

map <silent> <Tab> :NERDTreeToggle<CR>

syntax enable
set foldenable
set foldnestmax=1
set foldmethod=syntax

syntax on
:colorscheme gruvbox
set backspace=indent,eol,start
set cursorline
hi CursorLine cterm=bold ctermbg=239 guifg=NONE
set nu
set nocompatible
set hidden
set ignorecase
set noswapfile
set ttyfast
set undolevels=1000
set mouse=a
set nowrap
set autoindent
set showmatch
set scrolloff=5
set tabstop=4

execute pathogen#infect()
call pathogen#helptags()
