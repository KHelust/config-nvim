" KarHec Bib ftplugin

" Snippets:
  " Article
    inoremap <leader>a @article{,<Enter>author = {<++>},<Enter>date = {<++>},<Enter>title = {<++>},<Enter>translator = {<++>},<Enter>journaltitle = {<++>},<Enter>volume = {<++>},<Enter>number = {<++>},<Enter>pages = {<++>},<Enter>doi = {<++>},<Enter>url = {<++>}<Enter>}<Enter><++><Esc>12k$<Esc>i

  " Book
    inoremap <leader>b @book{,<Enter>author = {<++>},<Enter>date = {<++>},<Enter>title = {<++>},<Enter>edition = {<++>},<Enter>editor = {<++>},<Enter>translator = {<++>},<Enter>location = {<++>},<Enter>publisher = {<++>},<Enter>url = {<++>},<Enter>}<Enter><++><Esc>11k$<Esc>i

  " Incollection
    inoremap <leader>c @incollection{,<Enter>author = {<++>},<Enter>date = {<++>},<Enter>title = {<++>},<Enter>booktitle = {<++>},<Enter>editor = {<++>},<Enter>pages = {<++>},<Enter>location = {<++>},<Enter>publisher = {<++>},<Enter>}<Enter><++><Esc>10k$<Esc>i

  " Miscellaneous
    inoremap <leader>i @misc{,<Enter>author = {<++>},<Enter>date = {<++>},<Enter>title = {<++>},<Enter>booktitle = {<++>},<Enter>editor = {<++>},<Enter>pages = {<++>},<Enter>location = {<++>},<Enter>publisher = {<++>},<Enter>}<Enter><++><Esc>10k$<Esc>i

  " PhD Thesis
    inoremap <leader>d @phdthesis{,<Enter>author = {<++>},<Enter>date = {<++>},<Enter>title = {<++>},<Enter>type = {<++>},<Enter>school = {<++>},<Enter>location = {<++>},<Enter>url = {<++>},<Enter>}<Enter><++><Esc>9k$<Esc>i

  " Thesis
    inoremap <leader>t @thesis{,<Enter>author = {<++>},<Enter>date = {<++>},<Enter>title = {<++>},<Enter>type = {<++>},<Enter>institution = {<++>},<Enter>location = {<++>},<Enter>url = {<++>},<Enter>}<Enter><++><Esc>9k$<Esc>i

  " Guides
    inoremap <leader>gg <++>
    inoremap <leader>. <Esc>/<++><Enter>"_c4l
    nnoremap <leader>. <Esc>/<++><Enter>"_c4l
    vnoremap <leader>. <Esc>/<++><Enter>"_c4l
