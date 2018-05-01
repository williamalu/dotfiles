if !exists("g:potion_command")
  let g:potion_command = "potion"
endif

nnoremap <buffer> <localleader>r :call potion#externalcommand#PotionCompileAndRunFile()<cr>
nnoremap <buffer> <localleader>b :call potion#externalcommand#PotionShowBytecode()<cr>
