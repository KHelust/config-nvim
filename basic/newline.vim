" Newline

  " Create new line at end of chain
    function! Chomp(str)
    	return substitute(a:str, '\n$', '', '')
    endfunction
  " Commenting new line
    autocmd BufEnter * setlocal formatoptions-=cro
