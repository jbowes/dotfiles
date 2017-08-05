" set completeopt+=noinsert
" set completeopt+=noselect

"let g:deoplete#enable_at_startup = 1
"let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
"let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
"let g:deoplete#sources#go#use_cache = 1
"let g:deoplete#sources#go#json_directory = '~/.cache/deoplete/go/$GOOS_$GOARCH'

" close the preview window up top when completion is done
" autocmd CompleteDone * pclose!

" tab complete for the completion menu
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0
" optional
inoremap <silent> <c-u> <c-r>=cm#sources#ultisnips#trigger_or_popup("\<Plug>(ultisnips_expand)")<cr>

"let g:deoplete#enable_smart_case = 1
"call deoplete#custom#set('_', 'converters', ['converter_auto_paren'])

"let g:ulti_expand_or_jump_res = 0 "default value, just set once
"function! Ulti_ExpandOrJump_and_getRes()
"  call UltiSnips#ExpandSnippetOrJump()
"  return g:ulti_expand_or_jump_res
"endfunction

" deoplete + neosnippet + autopairs
"imap <expr><TAB> pumvisible() ? "\<C-n>" : UltiSnips#ExpandSnippetOrJump() ? "" : "\<TAB>"
"imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
"inoremap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"
