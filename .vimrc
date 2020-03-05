"" General Settings

filetype plugin on  " Enable file type plugins
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

set wildmenu	    " Turn on the Wild menu

let mapleader = "," " Map-leader

set number	    " Show line numbers
set foldcolumn=1    " Add a bit extra margin to the left
set linebreak	    " Break lines at word (requires Wrap lines)
set showbreak=+++   " Wrap-broken line prefix
set textwidth=120   " Line wrap (number of cols)
set showmatch	    " Highlight matching brace
set spell	    " Enable spell-checking
 
set hlsearch	    " Highlight all search results
set smartcase	    " Enable smart-case search
set ignorecase	    " Always case-insensitive
set incsearch	    " Searches for strings incrementally
set ignorecase	    " Ignore case when searching
set smartcase	    " When searching try to be smart about cases 
 
set autoindent	    " Auto-indent new lines
set cindent	    " Use 'C' style program indenting
set shiftwidth=4    " Number of auto-indent spaces
set smartindent	    " Enable smart-indent
set smarttab	    " Enable smart-tabs
set softtabstop=4   " Number of spaces per Tab
set so=7	    " Set 7 lines to the cursor - when moving vertically using j/k

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"" Colors and Fonts
syntax enable	    " Enable syntax highlighting

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" Set UTF-8 as standard encoding and en_US as the standard language
set encoding=utf8

"" Status Line
set laststatus=2    " Always show the status line

" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
 
"" Advanced Settings
set ruler	    " Show row and column ruler information

set viminfo+=n~/.vim/viminfo

set undolevels=1000		" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

"" Copy and Paste
vnoremap <C-c> "+y
map <C-p> "+p
