" Markdown ftplugin

" Settings:
  set breakindent
  set wrap
  set linebreak

" FileType:
  au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown

" Compile:
  nnoremap <leader>mpd :write <bar> :Pandoc pdf<CR>
  nnoremap <leader>mpf :write <bar> :Pandoc! pdf<CR>
  nnoremap <leader>mph :write <bar> :Pandoc pdf -H header.tex<CR>
  nnoremap <leader>mpi :write <bar> :Pandoc! pdf -H header.tex<CR>
  nnoremap <leader>mpp :write <bar> :Pandoc pdf --template plantilla.tex<CR>
  nnoremap <leader>mpt :write <bar> :Pandoc! pdf --template plantilla.tex<CR>
  nnoremap <leader>mpw :write <bar> :Pandoc<CR>
  
" Snippets:
  " YAML
    nnoremap <leader>myl i---<Enter>title: <Enter>author: <++><Enter>mainfont: <++><Enter>sansfont: <++><Enter>monofont: <++><Enter>fontsize: <++>pt<Enter>geometry: "margin=<++>cm"<Enter>lang: es-MX<Enter>pagestyle: <++>plain or <++>empty or <++>headings<Enter>linestretch: <++><Enter>bibliography: ./<++>.bib<Enter>csl: ./<++>.csl<Enter>toc: <++>true or <++>false<Enter>numbersections: <++>true or <++>false<Enter>---<Enter><Enter><++><Esc>ggjA

  " Syntax
    inoremap <leader>it ** <++><Esc>F*i
    inoremap <leader>bd **** <++><Esc>F*hi
    inoremap <leader>vr `` <++><Esc>F`i
    inoremap <leader>sp ^^ <++><Esc>F^i
    inoremap <leader>sb ~~ <++><Esc>F~i
    inoremap <leader>st ~~~~ <++><Esc>F~hi

  " Environment
    inoremap <leader>ec $$<++><Esc>F$i
    inoremap <leader>eb $$$$<Enter><Enter><++><Esc>2kF$i
    inoremap <leader>bt ><Space>
    inoremap <leader>bv ><Space>``<Space><++><Esc>F`i

  " Levels
    inoremap <leader><leader>1 #<Space><Enter><Enter><++><Esc>2kA
    inoremap <leader><leader>2 ##<Space><Enter><Enter><++><Esc>2kA
    inoremap <leader><leader>3 ###<Space><Enter><Enter><++><Esc>2kA
    inoremap <leader><leader>4 ####<Space><Enter><Enter><++><Esc>2kA
    inoremap <leader><leader>5 #####<Space><Enter><Enter><++><Esc>2kA
    inoremap <leader><leader>6 ######<Space><Enter><Enter><++><Esc>2kA

  " Link URLs
    inoremap <leader>ur <https://><Esc>F/a
    inoremap <leader>wb [](<++>)<++><Esc>F[a

  " Link Headers (title in lowercase & spaces in hyphens)
    inoremap <leader>mh {#sec:}<++><Esc>F}i
    inoremap <leader>lh [](#sec:<++>)<++><Esc>F[a

  " Footnote
    if !hasmapto('<Plug>AddVimFootnote', 'i') && mapcheck('<Leader>fn', 'i') is# ''
    	imap <buffer> <Leader>fn <Plug>AddVimFootnote
    endif
    if !hasmapto('<Plug>AddVimFootnote', 'n') && mapcheck('<Leader>fn', 'n') is# ""
      nmap <buffer> <Leader>fn <Plug>AddVimFootnote
    endif

    if !hasmapto('<Plug>ReturnFromFootnote', 'i') && mapcheck('<Leader>rn', 'i') is# ''
      imap <buffer> <Leader>rn <Plug>ReturnFromFootnote
    endif
    if !hasmapto('<Plug>ReturnFromFootnote', 'n') && mapcheck('<Leader>rn', 'n') is# ''
      nmap <buffer> <Leader>rn <Plug>ReturnFromFootnote
    endif

  " Image
    inoremap <leader>ii ![ \label{<++>}](./<++>){#id .class width=<++>% height=<++>%}<++><Esc>F[a
    inoremap <leader>rr \ref{}<++><Esc>F}i

  " List
    inoremap <leader>bl *<Space>
    inoremap <leader>nl 1.<Space>

  " Cites
    inoremap <leader>tc @ <++><Esc>T@i
    inoremap <leader>nc [-@].<++><Esc>T@i
    inoremap <leader>pc [@].<++><Esc>T@i

  " Code
    inoremap <leader>cd ```<Enter><++><Enter>```<Esc>2kA
    inoremap <leader>cr ```r<Enter><Enter>```<Enter><Enter><++><Esc>3ki

  " Guides
    inoremap <leader>gg <++>
    inoremap <leader>. <Esc>/<++><Enter>"_c4l
    nnoremap <leader>. <Esc>/<++><Enter>"_c4l
    vnoremap <leader>. <Esc>/<++><Enter>"_c4l
