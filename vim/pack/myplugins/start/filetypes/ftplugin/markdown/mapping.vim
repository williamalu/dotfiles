" MARKDOWN KEY MAPPINGS
" Operator-pending: inside heading
onoremap ih :<c-u>execute "normal! ?^#\\+ \r:nohlsearch\rwvg_"<cr>
" Operator-pending: around heading
onoremap ah :<c-u>execute "normal! ?^#\\+ \r:nohlsearch\rvg_"<cr>
