call dein#add("altercation/vim-colors-solarized")
" call dein#add("dracula/vim")
" call dein#add("mhartington/oceanic-next")

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

" Linting, completion
call dein#add("w0rp/ale")
call dein#add("roxma/nvim-completion-manager")
call dein#add("SirVer/ultisnips")
"call dein#add("neomake/neomake")
"call dein#add('Shougo/deoplete.nvim')
"call dein#add('zchee/deoplete-go', {'build': 'make'})

" Manage python deps needed by plugins
call dein#add("roxma/python-support.nvim")

" Language specific plugins
call dein#add("fatih/vim-go")
call dein#add("elzr/vim-json")
call dein#add("hashivim/vim-terraform")
call dein#add("vim-scripts/node.js")
call dein#add("pangloss/vim-javascript")
