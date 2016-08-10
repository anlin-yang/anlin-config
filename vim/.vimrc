"==================================================
"  FileName: .vimrc
"  Author: anlin.yang
"  Version: 1.0.0
"  Email: anlin0414@gmail.com
"  Blog: anlin-yang.github.io
"  Date: 2016-08-10
"==================================================

"==============================
"  Vim基本配置
"==============================
"------------------------------ basic
set number             " show line number
set history=1000       " sets how many lines of history VIM has to remember
set autoread           " set to auto read when a file is changed from the outside
set showmatch          " show matching brackets when text indicator is over them
set laststatus=2       " always show the status line
set t_Co=256           " explicitly tell Vim that the terminal supports 256 colors
set cursorline         " underline of cursor's line

"------------------------------ encoding
set encoding=utf-8     " set utf8 as standard encoding and en_US as the standard language
set fileencodings=utf-8  "自动判断编码时 依次尝试一下编码

"------------------------------ convert tab to space
set shiftwidth=4       " 设置自动对齐空格数
set tabstop=4          " 1 tab == 4 spaces
set expandtab          " Use spaces instead of tabs

" Enable syntax highlighting
syntax enable
colorscheme desert
set background=light

" Highlight search results
set hlsearch

"------------------------------ searching
" ignore letter's capital and lower case in searching
set ignorecase
highlight Search cterm=bold ctermbg=white ctermfg=black

"配置backspace键工作方式
"set backspae=indent,eol,start

" Set utf8 as standard encoding and en_US as the standard language
  set encoding=utf8

"----设置在编辑过程中右下角显示光标的行列信息
"set ruler
"----当一行文字很长时取消换行
"set nowrap

"----在状态栏显示正在输入的命令
"set showcmd

"----设置历史记录条数
"set history=1000

"----设置取消备份 禁止临时文件生成
"set nobackup
"set noswapfile

"----突出现实当前行列
"set cursorline
"set cursorcolumn

"----设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
"set showmatch

"----设置C/C++方式自动对齐
"set autoindent
"set cindent

"----开启语法高亮功能
"syntax enable
"syntax on

"----指定配色方案为256色
"set t_Co=256

"----设置搜索时忽略大小写
"set ignorecase

"----设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
"set mouse=a

"设置Tab宽度
"set tabstop=4
"----设置自动对齐空格数
set shiftwidth=4
"----设置按退格键时可以一次删除4个空格
"set softtabstop=4
"----设置按退格键时可以一次删除4个空格
"set smarttab
"----将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
"set expandtab

"----设置编码方式
set encoding=utf-8
"----自动判断编码时 依次尝试一下编码
"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1



"----检测文件类型
"filetype on
"----针对不同的文件采用不同的缩进方式
"filetype indent on
"----允许插件
"filetype plugin on
"----启动智能补全
"filetype plugin indent on






"==========
"  Vundle基本配置
"==========
"关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required 使用Vundle来管理Vundle
Plugin 'VundleVim/Vundle.vim'

"========================================plugins
" Keep Plugin commands between vundle#begin/end.
"如果插件来自github，那么只需要写作者名/项目名就可以了
"plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'einars/js-beautify'
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'
Plugin 'mattn/emmet-vim'
"Plugin 'jelera/vim-javascript-syntax'


" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
 
" ==============load plugins======================

" --------------------------------------------------supertab
  let g:SuperTabRetainCompletionType=2 
" 0 – 不记录上次的补全方式 
" 1 – 记住上次的补全方式,直到用其他的补全命令改变它 
" 2 – 记住上次的补全方式,直到按ESC退出插入模式为止

  let g:SuperTabDefaultCompletionType="<C-X><C-O>" 
" 设置按下<Tab>后默认的补全方式, 默认是<C-P>, 
" 现在改为<C-X><C-O>. 关于<C-P>的补全方式, 
" 还有其他的补全方式, 你可以看看下面的一些帮助: 
" :help ins-completion 
" :help compl-omni
" 之后就可以用 Tab 代替 Ctrl + X， Ctrl + O 了。

" ------------------------------------------------- airline
  let g:airline_powerline_fonts = 1

" ------------------------------------------------- indentline
  let g:indentLine_enabled = 1
  let g:indentLine_char = '¦'
  let g:indentLine_color_term = 239
  
" ------------------------------------------------- emmet
  let g:user_emmet_install_global = 0
  autocmd FileType html,css EmmetInstall

" ------------------------------------------------- js-beautify
  map <c-f> :call JsBeautify()<cr>
