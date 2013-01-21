" Fix trailing whitespace.
function! s:RemoveWhitespace(from, to)
  let l:current_pos_list = getpos(".")
  execute a:from . "," . a:to . "s/\\s\\+$//"
  call setpos(".", l:current_pos_list)
endfunction      

command! -range=% RemoveWhiteSpace call <SID>RemoveWhiteSpace(<line1>,<line2>)


