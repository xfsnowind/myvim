" jj                        save file and stay INSERT MODE (use in INSERT MODE) 保存文件并留在插入模式 [插入模式]
" kk                        switch to NORMAL MODE (use in INSERT MODE) 返回Normal模式 [插入模式]

" nt                        Open NERDTree 打开NERDTree [非插入模式]
" tb                        打开tagbar[非插入模式]

" TT                        new line above 在光標上面創建新一行
" tt                        new line below 在光標下面創建新一行

" Ctrl + n                  find next item for multiple selecting in NORMAL Mode 找到下一个相同的字符来进行多重选择
" Ctrl + x                  skip the item for multiple selecting in NORMAL Mode 跳过当前字符
" Ctrl + p                  go to previous item for multiple selecting in NORMAL MODE 回到前一个字符

" Ctrl + n                  auto-complete in INSERT MODE 插入模式下自动补全

" gcc                       comment/uncomment the current line 注释/非注释掉当前行
" gc                        comment/uncomment the selected part in VISUAL MODE 注释/非注释掉VISUAL模式下的文本

"***************************share vim with system clipboard, but have to install full-vim*****
"***************************for linxu, install vim-gnome(for gnome)***************************
" "*yy                      copy the whole line to system clipboard copy 当前行到系统粘贴板
" "*dd                      delete the whole line and save it to the system clipboard 删除整行并保存到系统粘贴板
" "*p                       paste the content of system clipboard to vim 粘贴系统粘贴板的内容到vim

" ClearRegisters            clear the registers 清除寄存器

" RECOMMEND TO USE fish shell: fishshell.com, for ubuntu, install it with:
" sudo apt-get install fish
" then set default shell as this fish: chsh -s /usr/bin/fish


version 7.3
set nocompatible						" be Improved
source ~/.vim/bundles.vim         " get and install all the plugins in windows 為windows安裝所有插件
" color scheme
" colorscheme blackboard					" background color 背景顏色
if ($COLORTERM == 'gnome-terminal' || $TERM == 'screen')
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
set textwidth=0                         " don't word wrap
set autoindent							" indent auto 自動對齊
set smartindent							" smart indent 只能對齊
set backspace=2							" set back space, check "help backspace" 設置退格鍵可用
set ff=unix                             " set file type as unix to avoid showing ^M

set ai                                  " turn on auto indentation 打开自动缩进
set nu									" show line number 顯示行號
set showmatch							" show matched bracked 顯示括號匹配情況
set cursorline							" highlight current line 突出顯示當前行
set vb t_vb=							" no sound 關閉聲音
set list								" show tab key with a highlight vertical line 顯示tab鍵使用高亮豎線顯示
set listchars=tab:\|\ ,

set hlsearch							" highlight search - show current search pattern 高亮顯示搜索結果
set incsearch							" incremental search
set magic								" set magic for search 用點魔法設置搜索
set ignorecase                          " ignore the case 忽略大小写
set nowritebackup						" no back up file when writing 設置無備份文件
set noswapfile							" no swap file when writing 設置無swap文件
set nobackup

set nowrap								" set nowrap 不要自動換行
set wrapscan							" keep searching when meet the file border 搜索到文件兩端時重新搜索
set autochdir							" set current directory as root directory of file explorer 設定文件瀏覽器目錄為當前目錄
set laststatus=2						" open status line 開啟狀態欄信息
set cmdheight=2							" set command line's height, default 1, here 2 設置命令行高度,默認是1,這裡為2

set lisp                                " modify bracket for lisp compatibility 
set prompt                              " Prompts for command input with : 自动添加冒号
set clipboard=unnamed                   " it's for copy/parse between vim and system clipboard, but it only helps in windows 用来copy/paste到粘贴板

set timeout timeoutlen=500              " set waiting time to 100ms 设置相应时间为100ms
set ttimeoutlen=500

if $SHELL =~ 'bin/fish'
    set shell=/bin/sh
endif

" use underscore when exceeds 80 chars 每行超過80個字符的用下劃線標示
" au BufRead,BufNewFile *.s,*.asm,*.h,*.c,*.cpp,*.cc,*.java,*.cs,*.erl,*.hs,*.sh,*.lua,*.pl,*.pm,*.php,*.py,*.rb,*.erb,*.vim,*.js,*.css,*.xml,*.html,*.xhtml 2match Underlined /.\%81v/




""""""""""""""""""""""""""""""language setting"""""""""""""""""""""""""""""
set fenc=utf-8
set encoding=utf-8
" 解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language message zh_CN.UTF-8
set fileencodings=utf-8,gb18030,ucs-bom,cp936,gb2312,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8,gb18030,ucs-bom,cp936,gb2312,big5,euc-jp,euc-kr,latin1

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
map nt :NERDTreeToggle<CR>

" tb                    Open tagbar 打开tagbar[非插入模式]
map tb :TagbarToggle<CR>

" tt                    new line below 在光標下面創建新一行
map tt jI<CR><ESC>k

" TT                    new line above 在光標上面創建新一行
map TT I<CR><ESC>k

""""""""""""""""""""""""""""""""quota and bracket match settings 引号 && 括号自动匹配""""""""""""""""""""""""""""""""

":inoremap ( ()<ESC>i

:inoremap ) <c-r>=ClosePair(')')<CR>

:inoremap { {}<ESC>i

:inoremap } <c-r>=ClosePair('}')<CR>

:inoremap [ []<ESC>i

":inoremap ] <c-r>=ClosePair(']')<CR>

":inoremap < <><ESC>i

":inoremap > <c-r>=ClosePair('>')<CR>

":inoremap " ""<ESC>i

":inoremap ' ''<ESC>i

":inoremap ` ``<ESC>i

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf



""""""""""""""""""""""""""""""""settings of plugin 插件配置""""""""""""""""""""""""""""""""
" tagbar
let g:tagbar_autofocus = 1
let g:tagbar_show_linenumbers = 1

" NERDTree
let g:NERDTreeWinSize = 40 
""""""""""""""""""""""""""""""""customed commands 自定義命令""""""""""""""""""""""""""""""""
function! ClearRegisters()
    let regs='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-="*+'
    let i=0
    while (i<strlen(regs))
        exec 'let @'.regs[i].'=""'
        let i=i+1
    endwhile
endfunction
 
command! ClearRegisters call ClearRegisters()
