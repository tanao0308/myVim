syntax on           "开启语法高亮
set showmatch       "显示匹配的括号
set number          "行号
set t_Co=256        "256色
"set mouse=a         "控制台启用鼠标
"set fileencodings=ucs-bom,UTF-8,GBK,BIG5,latin1
"set fileencoding=UTF-8
"set fileformat=unix "换行使用unix方式
"set cursorline
set paste " 设置复制语法为原文粘贴

""缩进定义
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab       "在插入模式中，将Tab键插入的制表符替换为空格。
set smarttab
set backspace=2     "退格键可以删除任何东西
set smartindent   "新行时使用智能自动缩进

""其他定义
setlocal noswapfile " 不要生成swap文件
colorscheme molokai " 设定配色方案  delek molokai pablo
set number          " 显示行号
set cursorline      " 突出显示当前行
set ruler           " 打开状态栏标尺
set nobackup        " 覆盖文件时不备份
set autochdir       " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes  " 设置备份时的行为为覆盖
set hlsearch        " 搜索时高亮显示被找到的文本
set noerrorbells    " 关闭错误信息响铃
set novisualbell    " 关闭使用可视响铃代替呼叫
set t_vb=           " 置空错误铃声的终端代码
set matchtime=2     " 短暂跳转到匹配括号的时间
set magic           " 设置魔术
set backspace=indent,eol,start  " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=2     " 设定命令行的行数为 2
set laststatus=2    " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ Ln\ %l,\ Col\ %c/%L%) " 设置在状态行显示的信息
set foldenable      " 开始折叠
set foldmethod=syntax   " 设置语法折叠
set foldcolumn=0    " 设置折叠区域的宽度
setlocal foldlevel=100  " 设置折叠层数为 1
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠
set viminfo='20,\"50
set viminfofile=~/.vim/viminfo

" >>> Plugins >>>
call plug#begin('~/.vim/plugged')
" Add this line to install NERDTree
Plug 'preservim/nerdtree'
map <C-n> :NERDTree<CR>
call plug#end()
" <<< Plugins <<<

