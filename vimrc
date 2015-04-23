" jj                                    save file and stay INSERT MODE (use in INSERT MODE) || 保存文件并留在插入模式 [插入模式]
" kk                                    switch to NORMAL MODE (use in INSERT MODE) || 返回Normal模式 [插入模式]

" nt                                    Open NERDTree (use in NORMAL MODE) || 打开NERDTree [非插入模式]
" 10<Ctrl-w> +/-/</> or :10winc >       have the split/vsplit window more/less 10 characters wide
" <Ctr-W> = or :winc =                  make the split/vsplit window equal || 均分窗口

" tb                                    Open tagbar (use in NORMAL MODE) || 打开tagbar[非插入模式]

" TT                                    new line above in NORMAL MODE || 非插入模式下在光標上面創建新一行并保持在非插入模式下
" tt                                    new line below in NORMAL MODE ||  非插入模式下在光標下面創建新一行并保持在非插入模式下
" O                                     new line above in NORMAL MODE and enter into INSERT MODE|| 非插入模式下在光標上面創建新一行并进入插入模式
" o                                     new line below in NORMAL MODE and enter into INSERT MODE || 非插入模式下在光標下面創建新一行并进入插入模式

" cw                                    delete from the cursor to the end of the word and enter into INSERT MODE || 删除到单词末尾并进入插入模式
" ^                                     go to the last non-blank character of line || 到当前行非空末尾
" g_                                    go to the first non-blank character of the line || 到当前行非空行首
" ZZ == :wq == :x
" NG                                    Go to line N || 到第N行

" Ctrl + n                              auto-complete in INSERT MODE || 插入模式下自动补全

" gcc                                   comment/uncomment the current line || 注释/非注释掉当前行
" gc                                    comment/uncomment the selected part in VISUAL MODE || 注释/非注释掉VISUAL模式下的文本

" >>                                    indent the current line in NORMAL MODE || Normal模式下向後縮進
" <<                                    outdent the current line in NORMAL MODE || Normal模式下向前縮進
" 3>                                    indent 3 times the selected lines in VISUAL MODE || Visual模式下對選中的行縮進3次
" 2<                                    outndent 2 times the selected lines in VISUAL MODE || Visual模式下對選中的行反縮進2次


" check the usage of vim-sexp mapping for regular people, here: https://github.com/tpope/vim-sexp-mappings-for-regular-people
" It's awesome. Its commands includes:
" >f                                    move a form
" >(
" dsf                                   splice (delete surroundings of form)


" share vim with system clipboard, but have to install full-vim for linxu, install vim-gnome(for gnome)
" `sudo apt-get install vim-gnome`


""*yy or "+yy                           copy the whole line to system clipboard || 复制当前行到系统粘贴板
"*dd or "+dd                            delete the whole line and save it to the system clipboard || 删除整行并保存到系统粘贴板
""*p                                    paste the content of system clipboard to vim || 粘贴系统粘贴板的内容到vim


" Commands for vim-fireplace for clojure repl
" Start vim from the same directory you ran lein repl from and it will automatically detect the nREPL host/port info, or use :Connect in Vim.
" K                                     gives you documentation for symbol under cursor.
" cpr                                   (require :reload) the current namespace
" cpR                                   (require :reload-all) the current namespace
" cpp                                   evaluates the inner-most expression containing the cursor
" :Eval                                 Run this command in the test codes, evaluate arbitrary Clojure code in the current namespace.



" ClearRegisters                        clear the registers || 清除寄存器

" RECOMMEND TO USE fish shell: fishshell.com, for ubuntu, install it with:
" sudo apt-get install fish
" then set default shell as this fish: chsh -s /usr/bin/fish



""""""""""""""""""""""""""""""basic setting"""""""""""""""""""""""""""""
version 7.3
" this have to cooperate with fish shell, you can install fishshell with
" sudo apt-get install fish
if $SHELL =~ 'bin/fish'
    set shell=/bin/sh
endif
set nocompatible            " be Improved
source ~/.vim/bundles.vim   " get and install all the plugins in windows || 為windows安裝所有插件



""""""""""""""""""""""""""""""language setting"""""""""""""""""""""""""""""
set fenc=utf-8
set encoding=utf-8          " 解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language message zh_CN.UTF-8
set fileencodings=utf-8,gb18030,ucs-bom,cp936,gb2312,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8,gb18030,ucs-bom,cp936,gb2312,big5,euc-jp,euc-kr,latin1



""""""""""""""""""""""""""""""person information setting"""""""""""""""""""""""""""""
" Email and name
iab EMAIL xfsnowind@gmail.com
iab MYNAME Feng Xue
" Current date and time
iab YDATE <C-R>=strftime("%a %d %b %T %Y")<CR>



""""""""""""""""""""""""""""""color setting"""""""""""""""""""""""""""""
" color scheme colorscheme blackboard       " background color || 背景顏色
if ($COLORTERM == 'gnome-terminal' || $TERM == 'screen')
    set t_Co=256
endif

" To select the favourite color scheme, check this: https://code.google.com/p/vimcolorschemetest/
" Checkout it with svn and open the file svn/html/index-html.html

if has("gui_running")
    colorscheme darkZ
elseif &t_Co >= 256
    colorscheme desert
else
    colorscheme tango
endif


""""""""""""""""""""""""""""""file global settings""""""""""""""""""""""""""""""""
set background=dark                     " set background color || 設置背景顏色

set tabstop=4                           " set width of tab key || 設置tab鍵寬度
set expandtab                           " convert tab to space || 轉換tab鍵為空格
set shiftwidth=4                        " 
set autoindent                          " indent auto || 自動對齊
set smartindent                         " smart indent || 只能對齊
set esckeys                             " allow usage of cursor keys within insert mode
set backspace=2                         " set back space, check 'help backspace' || 設置退格鍵可用
set ff=unix                             " set file type as unix to avoid showing

set ai                                  " turn on auto indentation || 打开自动缩进
set nu                                  " show line number || 顯示行號
set showmatch                           " show matched bracked || 顯示括號匹配情況
set cursorline                          " highlight current line || 突出顯示當前行
set vb t_vb=                            " no sound || 關閉聲音
set list                                " show tab key with a highlight vertical line || 顯示tab鍵使用高亮豎線顯示
set listchars=tab:\|\ ,

set hlsearch                            " highlight search - show current search pattern || 高亮顯示搜索結果
set incsearch                           " incremental search
set magic                               " set magic for search || 用點魔法設置搜索
set lazyredraw                          " do not update screen while executing macros
set ignorecase                          " ignore the case || 忽略大小写
set nowritebackup                       " no back up file when writing || 設置無備份文件
set nobackup
set noswapfile                          " no swap file when writing || 設置無swap文件

" 但是這裡有問題，在windows下會有自帶的ftpplugin也對tw進行設置，所以需要手動修改
set wrap linebreak                      " set wrap and break line softly, do not wrap the line hard || 當超出屏幕範圍時，自動以不插入換行符的形式換行
set textwidth=0                         " do not wrap the line hard || 超出範圍時，不插入換行符，只是以多行顯示
set wrapmargin=0
set wrapscan                            " keep searching when meet the file border || 搜索到文件兩端時重新搜索
set autochdir                           " set current directory as root directory of file explorer || 設定文件瀏覽器目錄為當前目錄

set laststatus=2                        " open status line || 開啟狀態欄信息
set cmdheight=2                         " set command line's height, default 1, here 2 || 設置命令行高度,默認是1,這裡為2
set showcmd                             " show current uncompleted command || 顯示未完成的命令
set showmode                            " show the current mode || 顯示當前命令
set title                               " title for xterm windows
set guioptions+=r                       " show the right side scroll bar || 顯示右側滾動欄
set list listchars=tab:▸\ ,trail:·,extends:»,precedes:«,nbsp:×   " show invisible chars

set lisp                                " modify bracket for lisp compatibility
set prompt                              " Prompts for command input with : || 自动添加冒号
set clipboard=unnamed                   " it's for copy/parse between vim and system clipboard, but it only helps in windows || 用来copy/paste到粘贴板

set timeout timeoutlen=500              " set waiting time to 100ms || 设置相应时间为100ms
set ttimeoutlen=500

" use underscore when exceeds 80 chars || 每行超過80個字符的用下劃線標示
au BufRead,BufNewFile *.s,*.asm,*.h,*.c,*.cpp,*.cc,*.java,*.cs,*.erl,*.hs,*.sh,*.lua,*.pl,*.pm,*.php,*.py,*.rb,*.erb,*.vim,*.js,*.css,*.xml,*.html,*.xhtml 2match Underlined /.\%81v/



"""""""""""""""""""""""""""""""syntax setting""""""""""""""""""""""""""""""
syntax enable                          " enable syntax || 打開語法高亮
syntax on                              " detect file type || 打開文件類型偵測
filetype indent on                     " set different indent for different file types || 根據不同的文件類型採用不同的縮進
filetype plugin on                     " load different plugins for different file types || 根據不同的文件類型加載不同的插件
filetype plugin indent on              " enable indent || 啟用自動補全


"""""""""""""""""""""""""""""""hot key settings"""""""""""""""""""""""""""""""
" jj                    save file and stay INSERT MODE (use in INSERT MODE) || 保存文件并留在插入模式[]插入模式]
imap jj <ESC>:w<CR>li

" kk                    switch to NORMAL MODE (use in INSERT MODE) || 返回NORMAL模式[插入模式]
imap kk <ESC>l

" nt                    Open NERDTree || 打开NERDTree [非插入模式]
map nt :NERDTreeToggle<CR>

" tb                    Open tagbar || 打开tagbar[非插入模式]
map tb :TagbarToggle<CR>

" tt                    new line below || 在光標下面創建新一行
map tt o<ESC>

" TT                    new line above || 在光標上面創建新一行
map TT O<ESC>



""""""""""""""""""""""""""""""""quota and bracket match settings 引号 && 括号自动匹配""""""""""""""""""""""""""""""""
:inoremap ( ()<ESC>i

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

function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char 
        return "\<Right>"
    else
        return a:char
    endif
endfunction



""""""""""""""""""""""""""""""""auto correct""""""""""""""""""""""""""""""""
" ABBREVIATIONS
iab seperate separate
iab teh the



""""""""""""""""""""""""""""""""plugin setting 插件配置""""""""""""""""""""""""""""""""

"""""""""""""""" tagbar
let g:tagbar_autofocus = 1
let g:tagbar_show_linenumbers = 1

"""""""""""""""" NERDTREE
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeWinSize = 40 

"""""""""""""""" Rainbow parans
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"""""""""""""""" clojure-static

"""""""""""""""" easymotion
" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

"""""""""""""""" cljx
autocmd BufNewFile,BufReadPost *.cljx setfiletype clojure


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
