" VimStartup

  augroup vimStartup
    au!
      autocmd BufReadPost *
       \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
       \ |   exe "normal! g`\""
       \ | endif
  augroup END
