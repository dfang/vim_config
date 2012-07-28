 " load Vundle and bundles config
 source ~/.vundle.vim

 " Set mapleader
 let mapleader = ","

 " Fast reloading of the .vimrc
 map <silent> <leader>ss :source ~/.vimrc<cr>

 " Fast editing of .vimrc
 map <silent> <leader>ee :tabedit ~/.vimrc<cr>

 " When .vimrc is edited, reload it
 autocmd! bufwritepost .vimrc source ~/.vimrc
 
 " lookup file tag file
 " 确保LookupFile_TagExpr变量设置正确，否则还是默认使用ctags的tag来查找，速度慢
 let g:LookupFile_TagExpr = '"filenametags"' 
  
 " enable file type detection
 filetype plugin indent on
 
 color desert
 
 " normal settings
 set autoindent
 set number
 set showmatch
 syntax on
 set nowrap
 set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

 " set increment search and hightlight search
 set incsearch
 set hlsearch
 
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


 " Windows switch with Ctrl+↑↓←→
 noremap <silent> <C-left> <esc><C-W><left>
 noremap <silent> <C-right> <esc><C-W><right>
 noremap <silent> <C-up> <esc><C-W><up>
 noremap <silent> <C-down> <esc><C-W><down>

 " Tab navigation
 noremap <silent> tf :tabfirst<cr>
 noremap <silent> tl :tablast<cr>
 noremap <silent> tp :tabprevious<cr>
 noremap <silent> tn :tabnext<cr>
 noremap te :tabedit<space>
 noremap tm :tabmove<space>


 " This means that you can have unwritten changes to a file and open a new file
 " using :e, without being forced to write or undo your changes first.
 set hidden
 
 " show command menu, work great with snipmate-snippets
 set wildmenu
