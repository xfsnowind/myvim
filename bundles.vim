set nocompatible               " be iMproved
filetype off                   " required!

if has('win32') || has('win64')
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc('~/.vim/bundle/')
else
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
endif


" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:

" for system file tree
Bundle 'scrooloose/nerdtree'

" highlight according to syntax of different types of file
Bundle 'scrooloose/syntastic'

" core killer feature of sublime text, multiple selector
Bundle 'vim-multiple-cursors'
" original repos on github
" vim-scripts repos
" Bundle 'L9'


" non github repos
Bundle 'git://git.wincent.com/command-t.git'


" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

