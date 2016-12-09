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

let g:deoplete#enable_smart_case = 1
call deoplete#custom#set('_', 'converters', ['converter_auto_paren'])

" deoplete tab-complete
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

"let g:ulti_expand_or_jump_res = 0 "default value, just set once
"function! Ulti_ExpandOrJump_and_getRes()
"  call UltiSnips#ExpandSnippetOrJump()
"  return g:ulti_expand_or_jump_res
"endfunction

" deoplete + neosnippet + autopairs
"imap <expr><TAB> pumvisible() ? "\<C-n>" : UltiSnips#ExpandSnippetOrJump() ? "" : "\<TAB>"
"imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
"inoremap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"
