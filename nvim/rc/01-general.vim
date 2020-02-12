" 关闭兼容模式
set nocompatible
" <LEADER>键
let mapleader=" "
" 主题配色
" 代码颜色主题
set t_Co=256monokai
" 语法高亮 
syntax on                        
syntax enable
" 共享系统剪贴板
set clipboard=unnamed
" 显示行号
set number              
" 突出显示当前行
set cursorline          
" 设定 tab 长度为 4
set tabstop=4
" 自动缩进空白长度
set softtabstop=4
" 统一缩进为4
set shiftwidth=4
" 自动缩进同上行
set autoindent
" 换行
" set wrap
" 显示命令
set showcmd
" 普通模式自动补全
set wildmenu
" 编码
set encoding=utf-8
" 不创建备份文件
set nobackup
" 不创建交换文件
set noswapfile
" 打开文件监视
set autoread
" 256色
set t_Co=256
" 退格可以退到上一行
set backspace=indent,eol,start
" 执行命令在当前目录下
set autochdir
" 永远显示边缘5行
set scrolloff=5
" 水平边缘5列
set sidescrolloff=5
" 高亮括号对
set showmatch
" 搜索相关
set hlsearch
set incsearch
set smartcase
exec "nohlsearch"
noremap - Nzz
noremap = nzz
" 不同模式不同光标
let &t_SI = "\<ESC>]50;CursorShape=1\x7"
let &t_SR = "\<ESC>]50;CursorShape=2\x7"
let &t_EI = "\<ESC>]50;CursorShape=0\x7"
" 打开文件光标回到之前位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
