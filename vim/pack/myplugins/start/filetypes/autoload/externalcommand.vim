function! externalcommand#OpenStringInSplit(string, bufname, filetype)
  " Make new buffer in split if bufname doesn't exist. Otherwise, move to the
  "   already existent split with bufname.
  let bufwinnr = bufwinnr(a:bufname)
  if bufwinnr == -1
    execute "split" . a:bufname
  else
    execute bufwinnr . "wincmd w"
  endif

  " Clear the split, define filetype and buftype
  normal! ggdG
  execute "setlocal filetype=" . a:filetype
  setlocal buftype=nofile

  " Insert the string text into the split
  call append(0, split(a:string, '\v\n'))
endfunction


function! externalcommand#RunCommandInSplit(command, bufname, filetype)
  " Make new buffer in split if bufname doesn't exist. Otherwise, move to the
  "   already existent split with bufname.
  let bufwinnr = bufwinnr(a:bufname)
  if bufwinnr == -1
    execute "split" . a:bufname
  else
    execute bufwinnr . "wincmd w"
  endif

  " Clear the split, define filetype and buftype
  normal! ggdG
  execute "setlocal filetype=" . a:filetype
  setlocal buftype=nofile

  " Run the command and insert the result into the buffer
  execute "read! " . a:command
endfunction
