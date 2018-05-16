function! comment#LineIsEmpty(line_num)
  " Return if the specified line matches a regex of all whitespace from start to end
  return getline(a:line_num) =~# '\v^\s*$'
endfunction


function! comment#LineIsCommented(line_num)
  " Return if the specified line matches a regex of white space followed by the comment string
  return getline(a:line_num) =~# '\v^\s*' . b:comment_string
endfunction


function! comment#CommentLine(line_num)
  " Exit the function if the specified line is all whitespace
  if comment#LineIsEmpty(a:line_num)
    return
  endif

  " Get the position of the cursor before the function was called
  let cursor_position = getcurpos()
  " Insert the comment string before the first non-blank character on the specifed line
  execute "normal! " . a:line_num . "ggI" . b:comment_string . " \<esc>"
  " Return the cursor to the position before the function was called
  call setpos(".", cursor_position)
endfunction


function! comment#UncommentLine(line_num)
  " Get the string of text on the specified line
  let line_string = getline(a:line_num)
  " Replace the specified line with the specified line minus the first instance of the comment string
  call setline(".", substitute(line_string, b:comment_string . " ", "", ""))
endfunction


function! comment#ToggleCommentLine(line_num)
  " If the current buffer does not have a comment string defined, exit the function
  if !exists("b:comment_string")
    echom "b:comment_string not defined"
    return
  endif

  if comment#LineIsCommented(a:line_num)
    call comment#UncommentLine(a:line_num)
  else
    call comment#CommentLine(a:line_num)
  endif
endfunction
