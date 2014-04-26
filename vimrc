set nocompatible
filetype off

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc('~/.vim/plugins/')

" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
filetype indent plugin on
" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Bundle 'L9'
Bundle 'FuzzyFinder'
" scripts not on GitHub
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///home/gmarik/path/to/plugin'
" ...
Bundle 'Valloric/YouCompleteMe'

filetype plugin indent on     " required
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
set nu

"set encoding=utf-8
"set fileencodings=ucs-bom,utf-8,gbk
"set fileencoding=gbk

"set guifont=Bitstream_Vera_Sans_Mono:h11:cANSI
"set gfw=:h11:cGB2312

set showcmd
set nobackup
"colorscheme rainbow_neon
set cindent
syntax on

"使用智能大小写搜索
set ignorecase smartcase

"终端下输入O时出现延迟解决方案， 因为<ECS>O是某些服务指令到开头 set termcap |
"help timeout
set timeout timeoutlen=5000 ttimeoutlen=100


"我在ubuntu下到backspace一直不能删除缩进和行， 原因不明，因此设置该项
set backspace=start,indent,eol

"关于超级补全插件YCM的设置, 参考自http://www.perlface.eu/?p=716 作者kelven
"在注释里也能使用补全
let g:ycm_complete_in_comments=1
"默认直接加载.ycm_extra_conf.py 不用再提示
let g:ycm_confirm_extra_conf=0
"最小补全字符为1， 键入一个字符就开始补全
let g:ycm_min_num_of_chars_for_completion=1
"语法关键字补全， 不明项
let g:ycm_seed_identifiers_with_syntax=1
"直接打开补全窗口到快捷键， 在补全顶级函数到时候特别有用，
"不过为什么我设置M-任何键都不行？
let g:ycm_key_invoke_completion='<C-\>'
"让YCM能在C源文件中正常工作
let g:ycm_semantic_triggers={}
let g:ycm_semantic_triggers.c=['->','.',' ','(','[','&']

"设置缩进
set expandtab
set softtabstop=2
set shiftwidth=2

