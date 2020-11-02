set nocompatible              " required
filetype off                  " required

" netrw directory list style:
let g:netrw_liststyle = 3

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'morhetz/gruvbox'
Plugin 'nvie/vim-flake8'
Plugin 'vim-python/python-syntax'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-tmux-navigator'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set nocp
set backspace=indent,eol,start

colorscheme gruvbox

"call togglebg#map("<F6>")

"if has('gui_running')
"  set background=dark
"  colorscheme gruvbox
"else
"  colorscheme zenburn
"endif

" Enable macOS clipboard via vim
set clipboard=unnamed

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tab navigation
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1

"au BufNewFile,BufRead *.py
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

" enable syntax highlighting
syntax on

" show line numbers
set number

" Show line number on the current line and relative numbers on all other line
"set relativenumber

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

imap <F5> <Esc>:w<CR>:!clear;python3 %<CR>

" More recommended configurations
" Enable search highligthning
set hlsearch

" Ignore case when searching
set ignorecase

" Incremental search that shows partial matches
set incsearch

" Automatically switch search to case-sensitive when query contains an
" uppercase letter
set smartcase

" Always try to show paragraphs last line
set display+=lastline

" Use an encoding that supports unicode
set encoding=utf-8

" Avoid wrapping a line in the middle of a word
set linebreak

" Enable line wrapping
set wrap

" The shell used to execute commands
"set shell

" Enable spellchecking
"set spell

" Increase the undo limit
set history=1000

" Always display the status bar
set laststatus=2

" Always show cursor position
set ruler

" Display command lines tab complete option as menu
set wildmenu

" Maximum number of tab pages that can be opened from the command line
set tabpagemax=50

" Disable beep on erros
set noerrorbells

" Flash the screen instead of beeping errors
"set visualbell

" Enable mouse for scrolling and resizing
set mouse=a

" Set windows title, reflecting the file currently being edited
set title

" Use colours that suit a dark background
set background=dark
