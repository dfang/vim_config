set nocompatible               " be iMproved
"filetype off                   " required!

"" enable vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"" let Vundle manage Vundle , required! 
Bundle 'gmarik/vundle'

" enable file type detection
filetype plugin indent on
syntax on

" if exists vimrc.bundles.local file , load it 
if filereadable(expand("~/.vimrc.bundles.local"))
  source ~/.vimrc.bundles.local
endif

" Set mapleader
let mapleader = ","

set background=dark
color darkblue

" normal settings
set autoindent
set number
set showmatch
set nowrap
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" set increment search and hightlight search and ignorecase search
set incsearch hlsearch ignorecase

" do not create backup, swap file, use git for version managment
set nobackup
set noswapfile

" status line setting
set laststatus=2
set statusline=%<%f\ %h%m%r%=[TYPE=%Y]\ [FORMAT=%{&ff}]\ [ENC=%{&enc}]\ [FENC=%{&fenc}]\ %-14.(%l,%c%V%)\ %P

" highline current line & column
" DOES NOT WORK with colorscheme solarized and blackboard
"--------------------------------------------------------
set cursorline
set cursorcolumn
highlight cursorline term=underline cterm=NONE ctermbg=0 gui=NONE guibg=Grey40

" Fast reloading of the .vimrc
nmap <silent> <leader>ss :source ~/.vimrc<cr>

" Fast editing of .vimrc
nmap <silent> <leader>ee :tabedit ~/.vimrc<cr>

" When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc


" Windows switch with Ctrl+↑↓←→
noremap <silent> <C-h> <esc><C-W><left>
noremap <silent> <C-l> <esc><C-W><right>
noremap <silent> <C-k> <esc><C-W><up>
noremap <silent> <C-j> <esc><C-W><down>

" Tab navigation
"noremap <silent> tf :tabfirst<cr>
"noremap <silent> tl :tablast<cr>
"noremap <silent> tp :tabprevious<cr>
"noremap <silent> tn :tabnext<cr>
"noremap te :tabedit<space>
"noremap tm :tabmove<space>


" This means that you can have unwritten changes to a file and open a new file
" using :e, without being forced to write or undo your changes first.
set hidden

" show command menu, work great with snipmate-snippets
set wildmenu
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

"map <Esc>[B <Down>

set vb t_vb=

Bundle 'tir_black'

set t_Co=256
color tir_black
