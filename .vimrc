" Use filetype-based syntax highlighting, ftplugins, and indentation.
set nocompatible
filetype plugin indent on
syntax on
set encoding=utf-8

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" More convenient  Movement when lines are wrapped
nmap j gj
nmap <Down> gj
nmap k gk
nmap <Up> gk

" Turn on the Wild menu
set wildmenu

let mapleader = "," " Map-leader

" Appearance and Behaviour
set number          " Show line numbers
set foldcolumn=1    " Add a bit extra margin to the left
"set linebreak	    " Break lines at word (requires Wrap lines)
"set showbreak=+++   " Wrap-broken line prefix
"set textwidth=80    " Line wrap (number of cols)
set showmatch	    " Highlight matching brace
"set relativenumber
set showcmd

" Search settings
set hlsearch	    " Highlight all search results
set smartcase	    " Enable smart-case search
set ignorecase	    " Always case-insensitive
set incsearch	    " Searches for strings incrementally
set ignorecase	    " Ignore case when searching
set smartcase	    " When searching try to be smart about cases

" Turn off search highlighting with <CR>.
nnoremap <CR> :nohlsearch<CR><CR>

" Tab settings
set ai
"set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
"set smarttab

"set so=7	        " Set 7 lines to the cursor - when moving vertically using j/k

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Enable 256 colours palette in Gnome Terminal
" if $COLORTERM == 'st-256color'
"    set t_Co=256
"endif

" let g:gruvbox_contrast_dark = 'hard'
" let g:gruvbox_termcolors = '256'
" autocmd vimenter * colorscheme gruvbox
" set background=dark

map <F6> :setlocal spell! spelllang=en_gb<CR>   " English spell-checker on/off
map <F7> :set spelllang=es_es<CR>               " Spanish spell-checker

" Status Line
set laststatus=2    " Always show the status line

" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Advanced Settings
set ruler	    " Show row and column ruler information

set viminfo+=n~/.vim/viminfo

set undolevels=1000		" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

" Copy and Paste
vnoremap <C-c> "+y :let @*=@+<CR>
map <C-v> "+p

" Automatically delete all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Unbind some useless/annoying default key bindings.
" 'Q' in normal mode enters Ex mode. You almost never want this.
nmap Q <Nop>

" Disable audible
set noerrorbells visualbell t_vb=
