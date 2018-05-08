syntax on
filetype off
set tabstop=4
set shiftwidth=4
set nu
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
"set spell "拼写检查

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
"markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Plugin 'suan/vim-instant-markdown'

call vundle#end()

filetype plugin indent on

"NERDTree config
let NERDTreeWinPos="left"
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

"YCM config
let g:ycm_semantic_triggers = {
   \   'css': [ 're!^\s{4}', 're!:\s+' ],
   \ }
