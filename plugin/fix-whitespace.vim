" Highlight trailing whitespace
highlight TrailingWhitespace ctermbg=darkred guibg=Red
augroup TrailingWhitespaceHi
  au!
  autocmd ColorScheme * highlight TrailingWhitespace ctermbg=darkred guibg=Red
  autocmd BufWinEnter * match TrailingWhitespace /\s\+$/
  autocmd InsertEnter * match TrailingWhitespace /\s\+\%#\@<!$/
  autocmd InsertLeave * match TrailingWhitespace /\s\+$/
augroup END


" Fix trailing whitespace.
function! s:RemoveWhitespace(from, to)
  let l:current_pos_list = getpos(".")
  execute a:from . ',' . a:to . 's/\s\+$//'
  call setpos(".", l:current_pos_list)
endfunction

command! -range=% RemoveWhitespace call <SID>RemoveWhitespace(<line1>,<line2>)


