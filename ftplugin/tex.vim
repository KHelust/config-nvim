" TeX ftplugin

" Settings:
  " Basic
    set sw=2
    set iskeyword+=:
  " Format
	  let g:tex_flavor = "latex"
  " Syntax
    let g:tex_fold_enabled = 1
    set fdm=syntax
  " Spell
    set spell spelllang=es_mx,en_us

" Template support:
  let b:tex_stylish = 1
  set ft=tex
  autocmd VimLeave *.tex !texclear %

" Whitespaces:
  autocmd BufWritePre * %s/\s\+$//e

" Compilar
  nnoremap <leader>lc :write<CR> <bar> :VimtexCompile<CR>

" Normal
  " Contar palabras
    nnoremap <leader>lwc :w !detex \| wc -w<CR>
  " Limpiar
    nnoremap <leader>lv :VimtexClean<CR>

  " Preámbulo
    nnoremap <leader>dcc i\documentclass[letterpaper,12pt]{article}<CR>\usepackage[top=1cm,bottom=2.5cm,right=2.5cm,left=2.5cm]{geometry}<CR>
    nnoremap <leader>upk o\usepackage{}<++><Esc>F}i

" Insertar
  " Preámbulo
    inoremap <leader>upk \usepackage{}<++><Esc>F}i
    inoremap <leader>ttl \title{}<Enter><++><Esc>-f}i
    inoremap <leader>ath \author{}<Enter><++><Esc>-f}i
    inoremap <leader>dte \date{}<Enter><++><Esc>-f}i
    inoremap <leader>mkt \maketitle<Enter>
    inoremap <leader>btp \begin{titlepage}<Enter><Enter>\end{titlepage}<Enter><++><Esc>2ki<Tab>
    inoremap <leader>{ {}<++><Esc>F}i
    inoremap <leader>[ []<++><Esc>F]i

  " Índices
    inoremap <leader>toc \tableofcontents<Enter>
    inoremap <leader>lof \listoffigures<Enter>
    inoremap <leader>lot \listoftables<Enter>

  " Estructura
    inoremap <leader>prt \part{}<++><Esc>F}i
    inoremap <leader>prt+ \part*{}<++><Esc>F}i
    inoremap <leader>chp \chapter{}<++><Esc>F}i
    inoremap <leader>chp+ \chapter*{}<++><Esc>F}i
    inoremap <leader>sct \section{}<++><Esc>F}i
    inoremap <leader>sct+ \section*{}<++><Esc>F}i
    inoremap <leader>ssct \subsection{}<++><Esc>F}i
    inoremap <leader>ssct+ \subsection*{}<++><Esc>F}i
    inoremap <leader>sssct \subsubsection{}<++><Esc>F}i
    inoremap <leader>sssct+ \subsubsection*{}<++><Esc>F}i
    inoremap <leader>prg \paragraph{}<++><Esc>F}i
    inoremap <leader>prg+ \paragraph*{}<++><Esc>F}i

  " Entornos de texto
    inoremap <leader>baa \begin{abstract}<Enter><Enter>\end{abstract}<Enter><++><Esc>2ki<Tab>
    inoremap <leader>bqt \begin{quote}<Enter><Enter>\end{quote}<Enter><++><Esc>2ki<Tab>
    inoremap <leader>bqn \begin{quotation}<Enter><Enter>\end{quotation}<Enter><++><Esc>2ki<Tab>
    inoremap <leader>bvs \begin{verse}<Enter><Enter>\end{verse}<Enter><++><Esc>2ki<Tab>

  " Listas
    inoremap <leader>bde \begin{description}<Enter><Enter>\end{description}<Enter><++><Esc>2ki<Tab>\item[] <++><Esc>F]i
    inoremap <leader>bnm \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><++><Esc>2ki<Tab>\item<Space>
    inoremap <leader>btm \begin{itemize}<Enter><Enter>\end{itemize}<Enter><++><Esc>2ki<Tab>\item<Space>
    inoremap <leader>itm \item<Space>
    inoremap <leader>itd \item[] <++><Esc>F]i

  " Referencias bibliográficas
    inoremap <leader>ctt \citetile{
    inoremap <leader>prc \parencite{
    inoremap <leader>txc \textcite{
    inoremap <leader>pcp \parencite[][<++>]{<++><Esc>2T[i
    inoremap <leader>pcs \parencites(<++>)(<++>)[<++>][<++>]{<++>[<++>][<++>]{<++><Esc>2T(i
    inoremap <leader>tcp \textcite[][<++>]{<++><Esc>T[i
    inoremap <leader>nc \nocite

  " Referencias cruzadas
    inoremap <leader>ntp \footnote{}<Esc>T{i
    inoremap <leader>hrf \href{}{<++>} <++><Esc>2T{i
    inoremap <leader>rep (\ref{})<++><Esc>F}i
    inoremap <leader>ref \ref{} <++><Esc>T{i

  " Elementos flotantes
    inoremap <leader>btr \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><++><Esc>3kA{}<Esc>i
    inoremap <leader>bte \begin{table}[h!]{}<Enter><Tab>\caption{}<Enter>\label{<++>}<Enter>\smallskip<Enter><++><Enter>\end{table}<Enter><++><Esc>5-f{a
    inoremap <leader>cpn \caption{}<Esc>T{i
    inoremap <leader>eqt \begin{equation}<Enter><Enter>\end{equation}<Enter><++><Esc>2ki<Tab>

  " Estilos bibliográficos
    inoremap <leader>mph \emph{} <++><Esc>T{i
    inoremap <leader>tbf \textbf{} <++><Esc>T{i
    inoremap <leader>tit \textit{} <++><Esc>T{i
    inoremap <leader>tmd \textmd{} <++><Esc>T{i
    inoremap <leader>trm \textrm{} <++><Esc>T{i
    inoremap <leader>tsf \textsf{} <++><Esc>T{i
    inoremap <leader>ttt \texttt{} <++><Esc>T{i
    inoremap <leader>tsc \textsc{} <++><Esc>T{i
    inoremap <leader>tno \textnormal{} <++><Esc>T{i
    inoremap <leader>{em {\em} <++><Esc>T{i
    inoremap <leader>bfs {\bfseries<Space>} <++><Esc>F}i
    inoremap <leader>its {\itshape<Space>} <++><Esc>F}i
    inoremap <leader>mds {\mdseries} <++><Esc>T{i
    inoremap <leader>rmf {\sffamily<Space>} <++><Esc>F}i
    inoremap <leader>sff {\sffamily<Space>} <++><Esc>F}i
    inoremap <leader>ttf {\ttfamily<Space>} <++><Esc>F}i
    inoremap <leader>scs {\scshape<Space>} <++><Esc>F}i
    inoremap <leader>nfn {\normalfont<Space>} <++><Esc>F}i
    inoremap <leader>und \underline{} <++><Esc>T{i

  " Tamaño de letas
    inoremap <leader>tny \tiny<Space>
    inoremap <leader>scr \scriptsize<Space>
    inoremap <leader>foz \footnotesize<Space>
    inoremap <leader>sml \small<Space>
    inoremap <leader>nrm \normalsize<Space>
    inoremap <leader>lrg \large<Space>
    inoremap <leader>llr \Large<Space>
    inoremap <leader>llg \LARGE<Space>
    inoremap <leader>hge \huge<Space>
    inoremap <leader>hgg \Huge<Space>

  " Texto literal
    inoremap <leader>bvr \begin{verbatim}<Enter><Enter>\end{verbatim}<Enter><<++><Esc>2ki<Tab>
    inoremap <leader>vb \verb\|\|<Space><++><Esc>F\|i

  " Justificación
    inoremap <leader>bct \begin{center}<Enter><Enter>\end{center}<Enter><++><Esc>2ki<Tab>
    inoremap <leader>bfl \begin{flushleft}<Enter><Enter>\end{flushleft}<Enter><++><Esc>2ki<Tab>
    inoremap <leader>bfr \begin{flushright}<Enter><Enter>\end{flushright}<Enter><++><Esc>2ki<Tab>
    inoremap <leader>ctg \centering<Space>
    inoremap <leader>rgl \raggedleft
    inoremap <leader>rgr \raggedright

    inoremap <leader>bdo \begin{document}<Enter><Enter>\end{document}<Esc>-i
    inoremap <leader>bfg \begin{figure}<Enter><++><Enter>\end{figure}<Enter><++><Esc>2kS
    inoremap <leader>bfm \begin{frame}<Enter>\frametitle{}<Enter><++><Enter>\end{frame}<Enter><Enter><++><Esc>4kf}i
    inoremap <leader>bmp \begin{minipage}[]{<++>}<Enter><Tab><++><Enter><Backspace>\end{minipage}<Enter><++><Esc>3-f[a

  " Table Enviroments
    inoremap <leader>bcl \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA

  " Insertar imágenes
    inoremap <leader>igr \includegraphics[height=cm, width=<++>cm]{<++>}<Enter><++><Esc>kf=a
    inoremap <leader>igt \includegraphics[width=1\textwidth,height=0.75\textheight]{}<++><Esc>T{i
    
  " Guides
    inoremap <leader>gg <++>
    inoremap <leader>. <Esc>/<++><Enter>"_c4l
    nnoremap <leader>. <Esc>/<++><Enter>"_c4l
    vnoremap <leader>. <Esc>/<++><Enter>"_c4l

  " Other
    inoremap <leader>blt {\blindtext}
    inoremap <leader>crc $^{\circ}$
    inoremap <leader>nus $\varnothing$
    "  inoremap <leader>fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
    "  inoremap <leader>glos {\gll <++> \\<Enter><++> \\<Enter>\trans{``<++>''}}<Esc>2k2bcw
