" Boilerplate dein configuration
" Required:
set runtimepath+=~/.config/nvim/dein-plugins/repos/github.com/Shougo/dein.vim


" Use the best stuff

" Required:
call dein#begin('~/.config/nvim/dein-plugins')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Load my plugins
source ~/.config/nvim/plugin_list.vim

" Required:
call dein#end()

" Required:
filetype plugin indent on

" Install missing plugins on startup
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
