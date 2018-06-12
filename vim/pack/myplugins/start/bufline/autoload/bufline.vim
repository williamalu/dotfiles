function! bufline#get_buf_nums()
  return filter(range(1, bufnr('$')), 'buflisted(v:val)')
endfunction


function! bufline#get_buf_highlighting(buf_num, curr_buf_num)
  return a:buf_num ==# a:curr_buf_num ? 'BufLineCurrent' : 'BufLineHidden'
endfunction


function! bufline#get_bufline()
  let bufs = []
  let buf_nums = bufline#get_buf_nums()
  let curr_buf_num = winbufnr(0)
  for buf_num in buf_nums
    let buf = {}
    let buf.num = buf_num
    let buf.name = bufname(buf_num)
    let buf.highlight = bufline#get_buf_highlighting(buf_num, curr_buf_num)
    let bufs += [buf]
  endfor
  return join(map(bufs, 'printf("%%#%s# %s ", v:val.highlight, v:val.name)'), '')
endfunction
