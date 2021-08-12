" Basic Autocommads

" Remove whitespace on save
  " autocmd BufWritePre * %s/\s\+$//e

" Unicode characters UniCycle
  autocmd VimEnter *.tex UniCycleOn

" Vertically center
  " autocmd InsertEnter * norm zz
