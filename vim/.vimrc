"**************************************************
"  FileName: .vimrc
"  Author: anlin.yang
"  Version: 1.0.0
"  Email: anlin0414@gmail.com
"  Blog: anlin-yang.github.io
"  Date: 2016-08-10
"**************************************************

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

" ----------------------------- syntax
  syntax enable          " Enable syntax highlighting
  colorscheme desert
  set background=light

"------------------------------ searching
  set ignorecase         " ignore letter's capital and lower case in searching
  set hlsearch           " Highlight search results
  highlight Search cterm=bold ctermbg=white ctermfg=black

"**************************************************
"  Vundle基本配置
"**************************************************


set nocompatible              " be iMproved, required (关闭vi的一致性模式 避免以前版本的一些Bug和局限)
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim      " set the runtime path to include Vundle and initialize
call vundle#begin()                    "call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'          " let Vundle manage Vundle, required (使用Vundle来管理Vundle)

"======================================== plugins
" Keep Plugin commands between vundle#begin/end. (如果插件来自github，那么只需要写作者名/项目名就可以了)

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



call vundle#end()                   " required, All of your Plugins must be added before the following line
filetype plugin indent on           " required
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
 
"**************************************************
"  load plugins
"**************************************************

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
