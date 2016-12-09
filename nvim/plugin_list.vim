call dein#add("altercation/vim-colors-solarized")

call dein#add("vim-airline/vim-airline")
call dein#add("vim-airline/vim-airline-themes")

call dein#add("jeetsukumaran/vim-buffergator")
call dein#add("ctrlpvim/ctrlp.vim")

call dein#add("tpope/vim-fugitive")
call dein#add("scrooloose/nerdcommenter")

call dein#add("easymotion/vim-easymotion")
call dein#add("tpope/vim-surround")
" let . work with vim-surround
call dein#add("tpope/vim-repeat")

"call dein#add("SirVer/ultisnips")
call dein#add("neomake/neomake")

" Completion
call dein#add('Shougo/deoplete.nvim')
call dein#add('zchee/deoplete-go', {'build': 'make'})

" Language specific plugins
call dein#add("fatih/vim-go")
call dein#add("elzr/vim-json")
call dein#add("hashivim/vim-terraform")
call dein#add("node.js")
call dein#add("pangloss/vim-javascript")
