" Maps
" vim:foldmethod=marker

" Command: {{{1
" Save sudo {{{2
" cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
" }}}
" }}}

" General: {{{1
noremap ñ ^
noremap _ g_
" }}}

" Insert: {{{1
" Basics
inoremap <C-u> <Esc>viwUea
inoremap jk <Esc>
inoremap <leader>dvn ÷
inoremap <leader>mul ·
" Archivo Sh-bang {{{2
inoremap <leader>shb #!/bin/sh<CR><CR>
" Mover líneas {{{2
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
" Undo break points {{{2
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap { {<c-g>u
inoremap [ [<c-g>u
inoremap ( (<c-g>u
inoremap " "<c-g>u
" }}}
" }}}

" Normal con <leader>: {{{1
" Archivos {{{2
nnoremap <silent> <leader>ae :edit<Space>
nnoremap <silent> <leader>ao :source<Space>
nnoremap <silent> <leader>as :saveas<Space>
nnoremap <silent> <leader>at :tabe<Space>
nnoremap <silent> <leader>aw :write<CR>
nnoremap <silent> <leader>adv :vsplit<CR>
nnoremap <silent> <leader>adh :split<CR>
nnoremap <silent> <leader>ana :enew<Space>
nnoremap <silent> <leader>anh :new<Space>
nnoremap <silent> <leader>anv :vnew<Space>
" Buffers {{{2
nnoremap <leader>bd :bd<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprev<CR>
" Cambiar Directorios/Compilar {{{2
nnoremap <leader>cd :cd<Space>
nnoremap <leader>cf :cd $HOME/KHelust/Git-Repos/dotfiles<CR>%:p:h<CR>:pwd<CR>
nnoremap <leader>cn :cd $HOME/KHelust/Git-Repos/config-nvim<CR>%:p:h<CR>:pwd<CR>
nnoremap <leader>cw :cd %:p:h<CR>:pwd<CR>
nnoremap <leader>cpa :w! \| !compiler <c-r>%<CR> \|:!opout <c-r>%<CR><CR> 
nnoremap <leader>cpc :w! \| !compiler <c-r>%<CR><CR>
nnoremap <leader>cpo :!opout <c-r>%<CR><CR>
" Desplazar líneas {{{2
nnoremap <leader>dj :m .+1<CR>==
nnoremap <leader>dk :m .-2<CR>==
" Git {{{2
nnoremap <leader>gg :G<CR>
nnoremap <leader>gp :Git push<CR>
" Help {{{2
nnoremap <leader>hc :helpclose<CR>
nnoremap <leader>he :help<Space>
nnoremap <leader>hg :helpgrep<Space>
" Idiomas {{{2
nnoremap <leader>ie :setlocal spell! spelllang=es_mx<CR>
nnoremap <leader>ii :setlocal spell! spelllang=en_us<CR>
" Quit {{{2
nnoremap <leader>qq :q<CR>
nnoremap <leader>qx :x<CR>
nnoremap <leader>qz :q!<CR>
" Substituir y Buscar {{{2
nnoremap <leader>sa /
nnoremap <leader>sd ?
nnoremap <leader>ss :%s//gI<Left><Left><Left>
" }}}
" }}}

" Normal sin <leader>: {{{1
" Básicos {{{2
nnoremap Y yg_
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap gJ gJg_
nnoremap J Jg_
nnoremap <F12> :edit<Space>$INIT<CR>
nnoremap <F10> :only<CR>
" Cargar init {{{2
nnoremap <F5> :source $INIT<CR>
" FloatTerm {{{2
nnoremap <A-n> :FloatermNew<CR>
nnoremap <A-f> :FloatermNew vifm<CR>
" Moverse entre ventanas {{{2
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Netrw {{{2
nnoremap <A-e> :Explore<CR>
nnoremap <A-l> :Lexplore<CR>
nnoremap <A-h> :Hexplore<CR>
nnoremap <A-t> :Texplore<CR>
nnoremap <A-v> :Vexplore<CR>
" Saltos corregidos {{{2
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
" Syntax Highlighting {{{2
nnoremap <C-S-X> :call <SID>SynStack()<CR>
" }}}
" }}}

" Visual: {{{1
" Basics {{{2
vnoremap + ~
vnoremap jk <Esc>
" Copy selected text to the system clipboard {{{2
vnoremap <C-c> "*y<CR>
" Make indenting more interactive {{{2
vnoremap > >gv
vnoremap < <gv
" Mover líneas {{{2
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" }}}
" }}}
