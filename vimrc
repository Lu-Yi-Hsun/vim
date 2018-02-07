call plug#begin('~/.vim/plugged')
"目錄
Plug 'scrooloose/nerdtree' 
"底下符號
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
call plug#end()


"在source code的最外層目錄輸入指令
"ctags -R *

"ctags讓go to defind 找到tags
set tags=./tags,./TAGS,tags;~,TAGS;~


"NERDTree config

"自動開啟 目錄
autocmd vimenter * NERDTree
"切換 目錄
map <C-n> :NERDTreeToggle<CR>
 
