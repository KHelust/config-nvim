" Vim-Pandoc

" Settings
  let g:pandoc#filetypes#handled = ['pandoc', 'markdown']
  let g:pandoc#filetypes#pandoc_markdown = 1
  let g:pandoc#folding#fold_yaml = 1
  let g:pandoc#folding#fold_fenced_codeblocks = 1
  let g:pandoc#toc#position = "left"
  let g:pandoc#command#custom_open = 'MyPandocOpen'
  let g:pandoc#command#prefer_pdf = 1
  let g:pandoc#compiler#arguments = '--citeproc'
  let g:pandoc#completion#bib#mode = 'citeproc' 
  let g:pandoc#spell#default_langs = ["es_mx", "en_us"]

" MyPandocOpen
	function! MyPandocOpen(file)
		let file = shellescape(fnamemodify(a:file, ':p'))
		let file_extension = fnamemodify(a:file, ':e')
		if file_extension is? 'pdf'
			if !empty($PDFVIEWER)
				return expand('$PDFVIEWER') . ' ' . file
			elseif executable('zathura')
				return 'zathura ' . file
			elseif executable('mupdf')
				return 'mupdf ' . file
			endif
		elseif file_extension is? 'html'
			if !empty($BROWSER)
				return expand('$BROWSER') . ' ' . file
			elseif executable('firefox')
				return 'firefox ' . file
			elseif executable('falkon')
				return 'falkon ' . file
			endif
		elseif file_extension is? 'odt' && executable('libreoffice-writer')
			return 'libreoffice-writer ' . file
		elseif file_extension is? 'epub' && executable('okular')
			return 'okular ' . file
		else
			return 'xdg-open ' . file
		endif
	endfunction
