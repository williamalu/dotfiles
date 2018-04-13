echom "Autoloading..."

function! potion#running#PotionCompileAndRunFile()
  silent !clear
  execute "!" . g:potion_command . " " . bufname("%")
endfunction

function! potion#running#PotionShowBytecode()
  " Save the current buffer
  write

  " Get the bytecode
  let bytecode = system(g:potion_command . " -c -V " . bufname("%"))

  " Open a new split, or move to it if it already exists
  let bufname = "__Potion_Bytecode__"
  let bufwinnr = bufwinnr(bufname)
  if bufwinnr == -1
    split __Potion_Bytecode__
  else
    execute bufwinnr . "wincmd w"
  endif

  " Clear the split and set it up
  normal! ggdG
  setlocal filetype=potionbytecode
  setlocal buftype=nofile

  " Insert the bytecode into the split
  call append(0, split(bytecode, '\v\n'))
endfunction
