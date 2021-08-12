" VimTeX

" Options
  let g:tex_flavor = "latex"
  let vimtex_complete_close_braces = 1
  let g:vimtex_format_enabled = 1
  let g:vimtex_imaps_leader = '+'
  let g:vimtex_compiler_progname = 'nvr'
" Folding
  let g:vimtex_fold_enabled = 1
  let g:vimtex_fold_manual = 1
  let g:vimtex_fold_types = {
    \ 'env-options' : {'enabled' : 0},
    \}
" Latexmk
  let g:vimtex_view_general_options_latexmk = '-reuse-instance'
  let g:vimtex_view_general_options
      \ = '-reuse-instance -forward-search @tex @line @col @pdf'
" Zathura
  let g:vimtex_view_enabled = 1
  let g:vimtex_view_method = 'zathura'
  let g:vimtex_view_general_viewer = 'zathura'
" Functions
  " MyViewHook
    function! MyViewHook() abort dict
      echom 'View Hook:' string(self)
    endfunction
  " MyViewCallbackHook
    function! MyViewCallbackHook() abort dict
      echom 'View Callback Hook:' string(self)
    endfunction
  " MyTestHook
    function! MyTestHook(status)
      echom a:status
    endfunction
