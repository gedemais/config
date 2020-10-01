" This configuration file is sourced in the current instance of neovim
if has("autocmd")
    autocmd! bufwritepost init.vim source ~/.config/nvim/init.vim | AirlineRefresh
endif

" Plugins
call plug#begin()

Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'lilydjwg/colorizer'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'garbas/vim-snipmate'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'pbondoer/vim-42header'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'

call plug#end()

" Syntastic settings :
"	C compilation
let g:syntastic_c_compiler = "gcc"
let g:syntastic_c_compiler_options=" -Wall -Werror -Wextra -Weverything"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map <silent> <Tab> :NERDTreeToggle<CR>

" Airline settings
let g:airline_theme='wombat'

" A voir
filetype plugin indent on

" Keyboard bindings
inoremap jj <ESC>
inoremap ( ()<left>
inoremap " ""<left>
inoremap { {}<left>
inoremap [ []<left>

" Moving in insert mode
inoremap <C-H> <Left>
inoremap <C-J> <Down>
inoremap <C-K> <Up>
inoremap <C-L> <Right>

" Split panes management bindings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Terminal adaptors
tnoremap <Esc> <C-\><C-n>
tnoremap jj <C-\><C-n>
tnoremap <C-J> <C-W><C-J>
tnoremap <C-K> <C-W><C-K>
tnoremap <C-L> <C-W><C-L>
tnoremap <C-H> <C-W><C-H>

" Split panes direction
set splitbelow
set splitright

" Files
set noswapfile

" Colors and schemes
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'
set termguicolors
set guicursor=
set cursorline
hi CursorLine cterm=bold ctermbg=239 guifg=NONE
set colorcolumn=81

" Characters
set scrolloff=5
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set smartindent
set smarttab

" Folding
set foldlevelstart=99
set foldlevel=99
set foldenable
set foldnestmax=1
set foldmethod=syntax

" Mouse
set mouse=a

" Undoing
set undolevels=1000

" Basics
set nu
set ruler
set nowrap
set ttyfast
set showmatch
