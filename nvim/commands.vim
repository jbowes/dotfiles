" \e to open a file relative to the current file
map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

nmap <silent> <Leader>q :nohlsearch<CR>
nmap <silent> <Leader>l :setlocal number!<CR>

" Repeated indent in visual mode:
vnoremap < <gv
vnoremap > >gv

"let g:UltiSnipsJumpForwardTrigger = "<tab>"
"
" Don't map any tabs, I'll do it later
"let g:UltiSnipsExpandTrigger = '<NOP>'
"let g:UltiSnipsJumpForwardTrigger = '<NOP>'
"let g:UltiSnipsJumpBackwardTrigger = '<NOP>'
" Don't unmap my mappings
"let g:UltiSnipsMappingsToIgnore = [ "SmartTab", "SmartShiftTab" ]
