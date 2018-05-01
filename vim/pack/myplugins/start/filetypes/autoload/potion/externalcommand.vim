function! potion#externalcommand#PotionCompileAndRunFile()
  " Save the current buffer
  write

  " Compile, run, and show output in new split
  let result = system(g:potion_command . " " . bufname("%"))
  let bufname = "__Potion_Result__"
  let filetype = "potionresult"
  call externalcommand#OpenStringInSplit(result, bufname, filetype)
endfunction

function! potion#externalcommand#PotionShowBytecode()
  " Save the current buffer
  write

  " Generate byte code and show in new split
  let bytecode = system(g:potion_command . " -c -V " . bufname("%"))
  let bufname = "__Potion_Bytecode__"
  let filetype = "potionbytecode"
  call externalcommand#OpenStringInSplit(bytecode, bufname, filetype)
endfunction
