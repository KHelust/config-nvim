" Goyo

" General
  nnoremap <leader>y :Goyo<CR>
  let g:goyo_width=100
  function! s:goyo_enter()
      setlocal linebreak
      setlocal wrap
      setlocal wrapmargin=0
      setlocal textwidth=0
    if has('gui_running')
      set fullscreen
      set linespace=7
  endfunction
  function! s:goyo_leave()
      setlocal colorscheme grubvox
  endfunction

" Enable Goyo by default for mutt writting
	autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo
	autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=100
