" Always show the tabline
set showtabline=2

" Set the tabline to show buffers
set tabline=%!bufline#get_bufline()

" Define some new highlight groups, taken from the TabLine set. These will define how the bufline
"   looks.
highlight link BufLineCurrent TabLineSel
highlight link BufLine TabLine
