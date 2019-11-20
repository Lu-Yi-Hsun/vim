call plug#begin('~/.vim/plugged')
"目錄
Plug 'scrooloose/nerdtree' 
"底下符號
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tomasiser/vim-code-dark'

"Ag 可以搜尋"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"行號"
set nu
call plug#end()
set t_Co=256
"theme
colorscheme dracula
"打gf可以找include檔"
set path+=/usr/include
set path+=/opt/cuda/include
"tab換成4 space"
syntax enable
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
"讓vim裡面複製的東西可以到別的地方貼上"
set clipboard=unnamedplus
Plug 'chazy/cscope_maps'
"在source code的最外層目錄輸入指令
"ctags -R *

"ctags讓go to defind 找到tags
set tags=tags,./tags,./TAGS,tags;~,TAGS;~

set autoread

if filereadable("cscope.out") 
    cs add cscope.out 
endif 

"NERDTree config
"自動開啟 目錄
autocmd vimenter * NERDTree
"切換 目錄
map <C-n> :NERDTreeToggle<CR>
