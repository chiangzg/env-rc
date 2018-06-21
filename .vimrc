syntax on
filetype off
set tabstop=4
set shiftwidth=4
set nu
set nocompatible
set laststatus=2	"总是显示窗口状态
set rtp+=~/.vim/bundle/Vundle.vim
"set mouse=a  "鼠标
"set spell "拼写检查

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"git
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 文件管理
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
"markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Plugin 'suan/vim-instant-markdown'
Plugin 'taglist.vim' "ctags
Plugin 'lfv89/vim-interestingwords' "单词高亮
Plugin 'vim-script'
call vundle#end()

filetype plugin indent on

"NERDTree config
let NERDTreeWinPos="left"
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

"interestingwords
let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
let mapleader=','
nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
nnoremap <silent> <leader>K :call UncolorAllWords()<cr>

"YCM config
" 寻找全局配置文件
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
" 使用ctags生成的tags文件
let g:ycm_collect_identifiers_from_tag_files = 1
" 每次重新生成匹配项，禁止缓存匹配项
let g:ycm_cache_omnifunc=0
" 在注释中也可以补全
let g:ycm_complete_in_comments=1
" 输入第一个字符就开始补全
let g:ycm_min_num_of_chars_for_completion=1
" 错误标识符
let g:ycm_error_symbol='>>'
" 警告标识符
let g:ycm_warning_symbol='>*'
let g:syntastic_java_checkers = []

" ctags
let Tlist_Show_One_File=1     "不同时显示多个文件的tag，只显示当前文件的    
let Tlist_Exit_OnlyWindow=1   "如果taglist窗口是最后一个窗口，则退出vim   
let Tlist_Ctags_Cmd="/usr/bin/ctags" "将taglist与ctags关联 
let Tlist_Use_Right_Window=1 "右侧显示窗口
