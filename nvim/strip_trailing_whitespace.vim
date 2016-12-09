" strip trailing whitespace from files on save
" Ignore the quickfix window
autocmd FileType qf let b:noStripWhitespace=1
autocmd FileType * autocmd BufWritePre <buffer> call StripTrailingWhitespace()
function! StripTrailingWhitespace()
  if exists('b:noStripWhitespace')
    return
  endif

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
