" Use the best stuff
if &compatible
  set nocompatible
endif

source ~/.config/nvim/dein.vim
source ~/.config/nvim/python_deps.vim

source ~/.config/nvim/appearance.vim
source ~/.config/nvim/commands.vim
source ~/.config/nvim/strip_trailing_whitespace.vim
source ~/.config/nvim/ctrlp.vim
source ~/.config/nvim/completion.vim

set hidden     " allow switching buffers without saving

" When searching, ignore case unless the search pattern includes uppercase
set ignorecase
set smartcase

autocmd BufWritePre *.tf call terraform#fmt()
