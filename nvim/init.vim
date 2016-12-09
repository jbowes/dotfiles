" Use the best stuff
if &compatible
  set nocompatible
endif

source ~/.config/nvim/dein.vim

source ~/.config/nvim/appearance.vim
source ~/.config/nvim/commands.vim
source ~/.config/nvim/strip_trailing_whitespace.vim
source ~/.config/nvim/ctrlp.vim

set hidden     " allow switching buffers without saving

" When searching, ignore case unless the search pattern includes uppercase
set ignorecase
set smartcase

set completeopt+=noinsert
set completeopt+=noselect
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
" let g:deoplete#sources#go#use_cache = 1
"let g:deoplete#sources#go#json_directory = '/path/to/data_dir'

" close the preview window up top when completion is done
autocmd CompleteDone * pclose!

autocmd BufWritePre *.tf call terraform#fmt()
