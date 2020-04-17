syntax on
set tabstop=4
set shiftwidth=4
set nu
"set nocompatible	"兼容vi
set laststatus=2	"总是显示窗口状态
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive' 			"Git
Plugin 'scrooloose/nerdtree'			"目录
Plugin 'Xuyuanp/nerdtree-git-plugin'	"目录Git
Plugin 'ctrlp.vim'						"模糊搜索文件
Plugin 'taglist.vim' 					"ctags
Plugin 'lfv89/vim-interestingwords' 	"单词高亮
Plugin 'rizzatti/dash.vim'				"dash
call vundle#end()

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

"ctags
let Tlist_Show_One_File=1     			"不同时显示多个文件的tag，只显示当前文件的    
let Tlist_Exit_OnlyWindow=1   			"如果taglist窗口是最后一个窗口，则退出vim   
let Tlist_Ctags_Cmd="/usr/bin/ctags" 	"将taglist与ctags关联 
let Tlist_Use_Right_Window=1 			"右侧显示窗口
