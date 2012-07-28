set nocompatible               " be iMproved
filetype off                   " required!

"--------------------
"" enable vundle
"--------------------
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

filetype plugin indent on     " required!

" My plugins
Bundle 'tpope/vim-rails'
Bundle 'ack.vim'
Bundle 'honza/snipmate-snippets'
"Bundle 'msanders/snipmate.vim'
Bundle 'crooloose/nerdtree'
"Bundle 'git://github.com/scrooloose/nerdtree.git'
"Bundle 'bufexplorer.zip'
Bundle 'ctrlp.vim'
Bundle 'genutils'
Bundle 'lookupfile'
Bundle 'surround.vim'
Bundle 'taglist.vim'
Bundle 'SuperTab'
Bundle 'The-NERD-Commenter'
Bundle 'vim-ruby/vim-ruby'
"Bundle 'tpope/vim-haml'
"Bundle 'vim-markdown'
"Bunlde 'tpope/vim-surround'
"Bundle 'tpope/vim-rake'


Bundle 'tpope/vim-vividchalk'
Bundle 'blackboard.vim'

"------plugin settings-----------------------------------------------------------------------

"autocmd VimEnter * NERDTree "启动Vim时自动打开nerdtree
nmap <F4> :NERDTreeToggle <CR>

" lookupfile settings
" lookupfile 默认使用F5来toggle
" ctrl+p、ctrl+n 代替上下方向键来选择
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找  
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串  
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史  
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目  
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件  
if filereadable("./filenametags")               "设置tag文件的名字  
   let g:LookupFile_TagExpr = '"./filenametags"'
endif
"映射LookupFile为,lk  
nmap <silent> <leader>lk :LUTags<cr>
"映射LUBufs为,ll  
nmap <silent> <leader>ll :LUBufs<cr>
"映射LUWalk为,lw  
nmap <silent> <leader>lw :LUWalk<cr>

" lookup file with ignore case
function! LookupFile_IgnoreCaseFunc(pattern)
    let _tags = &tags
    try
        let &tags = eval(g:LookupFile_TagExpr)
        let newpattern = '\c' . a:pattern
        let tags = taglist(newpattern)
    catch
        echohl ErrorMsg | echo "Exception: " . v:exception | echohl NONE
        return ""
    finally
        let &tags = _tags
    endtry

    " Show the matches for what is typed so far.
    let files = map(tags, 'v:val["filename"]')
    return files
endfunction
let g:LookupFile_LookupFunc = 'LookupFile_IgnoreCaseFunc'


