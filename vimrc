" \b open the buffer window
" \cl comment selection in visual mode (TODO: doc more commenting options)
" \\w,b etc easymotion
" \e open file relative to current position
" \r start ctrl-p. use c-j c-k to move up and down in list
" cs"' replace surrounding " with '. (todo: help surround for more)
" (not using) AutoClose - automagically closes quotes, brackets, etc.
" \o toggle paste mode
" \l toggle line numbers
" \q turn off the highlighted search

set nocompatible               " be iMproved
filetype off                   " required!

if $TERM == "xterm-256color" || $TERM == "screen-256color" ||
   \ $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'

" ones I picked
Bundle 'node.js'
Bundle "pangloss/vim-javascript"
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'jeetsukumaran/vim-buffergator'
"Bundle 'AutoClose'
Bundle 'ctrlp.vim'
Bundle 'tpope/vim-surround'
" let . work with surround
Bundle 'tpope/vim-repeat'
Bundle 'neocomplcache'
Bundle 'Tagbar'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


syntax on
filetype plugin indent on

let g:solarized_termcolors=256
let g:solarized_termtrans=1 " makes the background not change color
set background=dark
colorscheme solarized

set mouse=a
set hlsearch
set incsearch  " Incremental search
set showmatch
set ignorecase " Case insensitive search
set smartcase  " Case sensitive when uc presentswitch buffers without saving
set hidden     " allow switching buffers without saving
set showmatch  " show matching brackets

nmap <silent> <Leader>q :nohlsearch<CR>

nmap <silent> <Leader>l :setlocal number!<CR>
nmap <silent> <Leader>o :set paste!<CR>


" \e to open a file relative to the current file
map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" colorize columns past 80
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Indent in visual mode:
vnoremap < <gv
vnoremap > >gv

" vim powerline stuff
set laststatus=2
" don't use the custom characters that require font patching
" let g:Powerline_symbols = 'fancy'

" Syntastic
let g:syntastic_enable_signs=1
""let g:syntatstic_auto_loc_list=1
""let g:syntastic_check_on_open=1

" highlight bad whitespace and lines past 80 chars
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:.
set nowrap
" strip trailing whitespace from files on save
autocmd FileType c,cpp,java,javascript,python,xml,yml autocmd BufWritePre <buffer> call StripTrailingWhitespace()
function! StripTrailingWhitespace()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " do the business:
  %s/\s\+$//e
  " clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" ctrlp {
let g:ctrlp_working_path_mode = 2
nnoremap <silent> <D-t> :CtrlP<CR>
nnoremap <silent> <D-r> :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$',
    \ 'file': '\.exe$\|\.so$\|\.dll$' }

let g:ctrlp_user_command = {
    \ 'types': {
	\ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
	\ 2: ['.hg', 'hg --cwd %s locate -I .'],
    \ },
    \ 'fallback': 'find %s -type f'
\ }


map <leader>r :CtrlP<CR>
"}

  " neocomplcache {
      let g:acp_enableAtStartup = 0
      let g:neocomplcache_enable_at_startup = 1
      let g:neocomplcache_enable_camel_case_completion = 1
      let g:neocomplcache_enable_smart_case = 1
      let g:neocomplcache_enable_underbar_completion = 1
      let g:neocomplcache_enable_auto_delimiter = 1
      let g:neocomplcache_max_list = 15
      let g:neocomplcache_min_syntax_length = 3
      let g:neocomplcache_force_overwrite_completefunc = 1

      " Define dictionary.
      let g:neocomplcache_dictionary_filetype_lists = {
                  \ 'default' : '',
                  \ 'vimshell' : $HOME.'/.vimshell_hist',
                  \ 'scheme' : $HOME.'/.gosh_completions'
                  \ }

      " Define keyword.
      if !exists('g:neocomplcache_keyword_patterns')
          let g:neocomplcache_keyword_patterns = {}
      endif
      let g:neocomplcache_keyword_patterns._ = '\h\w*'

      " Plugin key-mappings.

      inoremap <expr><C-g> neocomplcache#undo_completion()
      inoremap <expr><C-l> neocomplcache#complete_common_string()
      inoremap <expr><CR> neocomplcache#complete_common_string()

      " <TAB>: completion.
      inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
      inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"

      " <CR>: close popup
      " <s-CR>: close popup and save indent.
      inoremap <expr><s-CR> pumvisible() ? neocomplcache#close_popup()"\<CR>" : "\<CR>"
      inoremap <expr><CR> pumvisible() ? neocomplcache#close_popup() : "\<CR>"

      " <C-h>, <BS>: close popup and delete backword char.
      inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
      inoremap <expr><C-y> neocomplcache#close_popup()

      " Enable omni completion.
      autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
      autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
      autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
      autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
      autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
      autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

      " Enable heavy omni completion.
      if !exists('g:neocomplcache_omni_patterns')
          let g:neocomplcache_omni_patterns = {}
      endif
      let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
      let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
      let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
      let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
      let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
  " }
