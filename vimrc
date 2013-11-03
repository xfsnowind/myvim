" jj                        save file and stay INSERT MODE (use in INSERT MODE) 保存文件并留在插入模式 [插入模式]
" kk                        switch to NORMAL MODE (use in INSERT MODE) 返回Normal模式 [插入模式]
" nt                        Open NERDTree 打开NERDTree [非插入模式]
" tl                        打开TagList [非插入模式]
" TT                        new line above 在光標上面創建新一行
" tt                        new line below 在光標下面創建新一行


version 7.3

set nocompatible						" be Improved
source ~/.vim/bundles.vim         " get and install all the plugins in windows 為windows安裝所有插件
" color scheme
" colorscheme blackboard					" background color 背景顏色
if $COLORTERM == 'gnome-terminal' || $TERM == 'screen'
  set t_Co=256
endif

"if has("gui_running")
"        colorscheme molokai
"elseif &t_Co >= 256
"        colorscheme zenburn
"else
"        colorscheme tango
"endif


""""""""""""""""""""""""""""""basic setting""""""""""""""""""""""""""""""""
"set background=dark						" set background color 設置背景顏色

set tabstop=4							" set width of tab key 設置tab鍵寬度
set expandtab							" convert tab to space 轉換tab鍵為空格
set shiftwidth=4						" 
set autoindent							" indent auto 自動對齊
set smartindent							" smart indent 只能對齊
set backspace=2							" set back space, check "help backspace" 設置退格鍵可用

set ai
set nu									" show line number 顯示行號
set showmatch							" show matched bracked 顯示括號匹配情況
set cursorline							" highlight current line 突出顯示當前行
set vb t_vb=							" no sound 關閉聲音
set list								" show tab key with a highlight vertical line 顯示tab鍵使用高亮豎線顯示
set listchars=tab:\|\ ,

set hlsearch							" highlight search - show current search pattern 高亮顯示搜索結果
set incsearch							" incremental search
set magic								" set magic for search 用點魔法設置搜索

set nowritebackup						" no back up file when writing 設置無備份文件
set noswapfile							" no swap file when writing 設置無swap文件
set nobackup

set wrap								" set wrap 自動換行
set wrapscan							" keep searching when meet the file border 搜索到文件兩端時重新搜索
set autochdir							" set current directory as root directory of file explorer 設定文件瀏覽器目錄為當前目錄
set laststatus=2						" open status line 開啟狀態欄信息
set cmdheight=2							" set command line's height, default 1, here 2 設置命令行高度,默認是1,這裡為2


" use underscore when exceeds 80 chars 每行超過80個字符的用下劃線標示
au BufRead,BufNewFile *.s,*.asm,*.h,*.c,*.cpp,*.cc,*.java,*.cs,*.erl,*.hs,*.sh,*.lua,*.pl,*.pm,*.php,*.py,*.rb,*.erb,*.vim,*.js,*.css,*.xml,*.html,*.xhtml 2match Underlined /.\%81v/




""""""""""""""""""""""""""""""language setting"""""""""""""""""""""""""""""
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1




"""""""""""""""""""""""""""""""syntax setting""""""""""""""""""""""""""""""
syntax enable							" enable syntax 打開語法高亮
syntax on								" detect file type 打開文件類型偵測
filetype indent on						" set different indent for different file types 根據不同的文件類型採用不同的縮進
filetype plugin on						" load different plugins for different file types 根據不同的文件類型加載不同的插件
filetype plugin indent on				" enable indent 啟用自動補全



"""""""""""""""""""""""""""""""hot key settings"""""""""""""""""""""""""""""""
" jj 					save file and stay INSERT MODE (use in INSERT MODE)
" 保存文件并留在插入模式[]插入模式]
imap jj <ESC>:w<CR>li

" kk					switch to NORMAL MODE (use in INSERT MODE)
" 返回NORMAL模式[插入模式]
imap kk <ESC>l

" nt                    Open NERDTree 打开NERDTree [非插入模式]
map nt :NERDTree<CR>

" tt                    new line below 在光標下面創建新一行
map tt jI<CR><ESC>k

" TT                    new line above 在光標上面創建新一行
map TT I<CR><ESC>k

""""""""""""""""""""""""""""""""quota and bracket match settings 引号 && 括号自动匹配""""""""""""""""""""""""""""""""

:inoremap ( ()<ESC>i

:inoremap ) <c-r>=ClosePair(')')<CR>

:inoremap { {}<ESC>i

:inoremap } <c-r>=ClosePair('}')<CR>

:inoremap [ []<ESC>i

:inoremap ] <c-r>=ClosePair(']')<CR>

:inoremap < <><ESC>i

:inoremap > <c-r>=ClosePair('>')<CR>

:inoremap " ""<ESC>i

:inoremap ' ''<ESC>i

:inoremap ` ``<ESC>i

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

