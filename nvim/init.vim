" This configuration file is sourced in the current instance of neovim
if has("autocmd")
    autocmd! bufwritepost init.vim source ~/.config/nvim/init.vim | AirlineRefresh
endif

set encoding=utf-8

" Plugins
call plug#begin()

Plug 'nvie/vim-flake8' " PEP8 python norm.
Plug 'scrooloose/nerdtree' " Useful for huge projects
Plug 'vim-airline/vim-airline' " Airline customization
Plug 'vim-airline/vim-airline-themes'
Plug 'pbondoer/vim-42header' " 42 Header (fn + f1)
Plug 'jiangmiao/auto-pairs' " Auto-pairing of brackets, parenthesis, etc...

Plug 'dhruvasagar/vim-dotoo' " TODO files

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

map <silent> <Tab> :NERDTreeToggle<CR>

" Airline settings
let g:airline_theme='wombat'

" A voir
filetype plugin indent on

" Keyboard bindings
inoremap jj <ESC>

" Split panes management bindings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Find files using Telescope command-line sugar.
let mapleader=" "

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>of <cmd>Telescope oldfiles<cr>
nnoremap <leader>lg <cmd>Telescope live_grep<cr>
nnoremap <leader>gs <cmd>Telescope grep_string<cr>
nnoremap <leader>h <cmd>Telescope help_tags<cr>

" Opens a new terminal pane vertically
nnoremap <C-X> :vs <CR> :term <CR> i

" Terminal
set scrollback=256
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
set hidden

" Colors and schemes
color gruvbox
set termguicolors
set guicursor=
set cursorline
hi CursorLine cterm=bold ctermbg=239 guifg=NONE
set colorcolumn=81

" Characters settings
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
nnoremap <Space> za

" Mouse
set mouse=a

" Undoing
set undolevels=1000

" Basics sets
set nu rnu
set ruler
set nowrap
set ttyfast
set showmatch

" Clipboard shortcut
vnoremap <C-c> "+y

