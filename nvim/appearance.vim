if $TERM == "xterm-256color" || $TERM == "screen-256color" ||
   \ $TERM == "screen" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif


let g:solarized_termcolors=256
let g:solarized_termtrans=1 " makes the background not change color
set background=dark
colorscheme solarized
autocmd colorscheme * highlight Comment ctermfg=241
let g:airline_solarized_normal_green = 1

"colorscheme dracula
"autocmd colorscheme * highlight Comment ctermfg=245
"autocmd colorscheme * highlight Normal ctermbg=0

"if (has("termguicolors"))
 "set termguicolors
"endif
"syntax enable
"colorscheme OceanicNext

"let g:airline_theme='oceanicnext'

" colorize columns past 80
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" highlight bad whitespace
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:.
set nowrap

let g:airline#extensions#whitespace#enabled = 0


if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ' '
let g:airline_right_sep = ' '
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_mode_map = {
  \ '__' : '-',
  \ 'n'  : 'N',
  \ 'i'  : 'I',
  \ 'R'  : 'R',
  \ 'c'  : 'C',
  \ 'v'  : 'V',
  \ 'V'  : 'V',
  \ 's'  : 'S',
  \ 'S'  : 'S',
\ }
