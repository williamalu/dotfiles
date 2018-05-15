function! comment#CommentCurrentLine()
  " Get the position of the cursor before the function was called
  let cursor_position = getcurpos()
  " Insert the comment string before the first non-blank line
  execute "normal! I" . b:comment_string . " \<esc>"
  " Return the cursor to the position before the function was called
  call setpos(".", cursor_position)
endfunction


function! comment#UncommentCurrentLine()
  " Get the string of text on the current line
  let current_line_string = getline(".")
  " Replace the current line with the current line minus the first instance of the comment string
  call setline(".", substitute(current_line_string, b:comment_string . " ", "", ""))
endfunction


function! comment#CurrentLineIsCommented()
  " Return if current line matches a regex of white space followed by the comment string
  return getline(".") =~# '\v^\s*' . b:comment_string
endfunction


function! comment#ToggleCommentCurrentLine()
  " If the current buffer does not have a comment string defined, exit the function
  if !exists("b:comment_string")
    echom "b:comment_string not defined"
    return
  endif

  if comment#CurrentLineIsCommented()
    call comment#UncommentCurrentLine()
  else
    call comment#CommentCurrentLine()
  endif
endfunction
