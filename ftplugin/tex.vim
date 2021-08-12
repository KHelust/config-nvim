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

" Compile::
  nnoremap <leader>lc :write<CR> <bar> :VimtexCompile<CR>

" Maps: 
  " Word count
    nnoremap <leader>lwc :w !detex \| wc -w<CR>
  " Clean
    nnoremap <leader>lv :VimtexClean<CR>

" Snippets:
  " LaTeX basic
    nnoremap <leader>ldc i\documentclass[letterpaper,12pt]{article}<CR>\usepackage[top=1cm,bottom=2.5cm,right=2.5cm,left=2.5cm]{geometry}<CR>
    nnoremap <leader>lup o\usepackage{}<++><Esc>F}i

  " Preamble
    " inoremap <leader>up \usepackage{}<++><Esc>F}i
    " inoremap <leader>ti \title{}<Enter><++><Esc>-f}i
    " inoremap <leader>au \author{}<Enter><++><Esc>-f}i
    " inoremap <leader>da \date{}<Enter><++><Esc>-f}i
    " inoremap <leader>bed \begin{document}<Enter><Enter>\end{document}<Esc>-i
    " inoremap <leader>tip \begin{titlepage}<Enter><Enter>\end{titlepage}<Enter><++><Esc>2ki<Tab>
    " inoremap <leader>abs \begin{abstract}<Enter><Enter>\end{abstract}<Enter><++><Esc>2ki<Tab>
    inoremap <leader>mkt \maketitle<Enter>
    inoremap <leader>{ {}<++><Esc>F}i
    inoremap <leader>[ []<++><Esc>F]i

  " TOC, LOF & LOT
    inoremap <leader>toc \tableofcontents<Enter>
    inoremap <leader>lof \listoffigures<Enter>
    inoremap <leader>lot \listoftables<Enter>

  " Chapters & Sections
    inoremap <leader>pt \part{}<++><Esc>F}i
    inoremap <leader>pt+ \part*{}<++><Esc>F}i
    inoremap <leader>cht \chapter{}<++><Esc>F}i
    inoremap <leader>cht+ \chapter*{}<++><Esc>F}i
    inoremap <leader>sec \section{}<++><Esc>F}i
    inoremap <leader>sec+ \section*{}<++><Esc>F}i
    inoremap <leader>ssec \subsection{}<++><Esc>F}i
    inoremap <leader>ssec+ \subsection*{}<++><Esc>F}i
    inoremap <leader>sssec \subsubsection{}<++><Esc>F}i
    inoremap <leader>sssec+ \subsubsection*{}<++><Esc>F}i
    inoremap <leader>prg \paragraph{}<++><Esc>F}i
    inoremap <leader>prg+ \paragraph*{}<++><Esc>F}i

  " General Enviroments
    inoremap <leader>bct \begin{center}<Enter><Enter>\end{center}<Enter><++><Esc>2ki<Tab>
    inoremap <leader>bfl \begin{flushleft}<Enter><Enter>\end{flushleft}<Enter><++><Esc>2ki<Tab>
    inoremap <leader>bfr \begin{flushright}<Enter><Enter>\end{flushright}<Enter><++><Esc>2ki<Tab>
    inoremap <leader>bmp \begin{minipage}[]{<++>}<Enter><Tab><++><Enter><Backspace>\end{minipage}<Enter><++><Esc>3-f[a
    inoremap <leader>bqt \begin{quote}<Enter><Enter>\end{quote}<Enter><++><Esc>2ki<Tab>
    inoremap <leader>bqn \begin{quotation}<Enter><Enter>\end{quotation}<Enter><++><Esc>2ki<Tab>
    inoremap <leader>bvs \begin{verse}<Enter><Enter>\end{verse}<Enter><++><Esc>2ki<Tab>
    inoremap <leader>vb \verb\|\|<Space><++><Esc>F\|i

  " List Enviroments
    inoremap <leader>ite \begin{itemize}<Enter><Enter>\end{itemize}<Enter><++><Esc>2ki<Tab>\item<Space>
    inoremap <leader>enm \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><++><Esc>2ki<Tab>\item<Space>
    inoremap <leader>bde \begin{description}<Enter><Enter>\end{description}<Enter><++><Esc>2ki<Tab>\item[] <++><Esc>F]i
    inoremap <leader>itm \item<Space>
    inoremap <leader>itd \item[] <++><Esc>F]i

  " Table Enviroments
    inoremap <leader>btr \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><++><Esc>3kA{}<Esc>i
    inoremap <leader>bte \begin{table}[h!]{}<Enter><Tab>\caption{}<Enter>\label{<++>}<Enter>\smallskip<Enter><++><Enter>\end{table}<Enter><++><Esc>5-f{a
    inoremap <leader>clm \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA

  " Insert Font Type
    inoremap <leader>tsf \textsf{} <++><Esc>T{i
    inoremap <leader>ttt \texttt{} <++><Esc>T{i
    inoremap <leader>tbf \textbf{} <++><Esc>T{i
    inoremap <leader>tit \textit{} <++><Esc>T{i
    inoremap <leader>tsc \textsc{} <++><Esc>T{i
    inoremap <leader>tno \textnormal{} <++><Esc>T{i
    inoremap <leader>isf {\sffamily<Space>} <++><Esc>F}i
    inoremap <leader>itt {\ttfamily<Space>} <++><Esc>F}i
    inoremap <leader>ibf {\bfseries<Space>} <++><Esc>F}i
    inoremap <leader>iit {\itshape<Space>} <++><Esc>F}i
    inoremap <leader>isc {\scshape<Space>} <++><Esc>F}i
    inoremap <leader>inf {\normalfont<Space>} <++><Esc>F}i
    inoremap <leader>udl \underline{} <++><Esc>T{i

  " Insert Cites
    inoremap <leader>pc \parencite
    inoremap <leader>tc \textcite
    inoremap <leader>pcp \parencite[]<++><Esc>T[i
    inoremap <leader>tcp \textcite[]<++><Esc>T[i
    inoremap <leader>nc \nocite

  " Guides
    inoremap <leader>gg <++>
    inoremap <leader>. <Esc>/<++><Enter>"_c4l
    nnoremap <leader>. <Esc>/<++><Enter>"_c4l
    vnoremap <leader>. <Esc>/<++><Enter>"_c4l

  " Other
    inoremap <leader>cn \caption{}<Esc>T{i
    inoremap <leader>ig \includegraphics[height=cm, width=<++>cm]{<++>}<Enter><++><Esc>kf=a
    inoremap <leader>igt \includegraphics[width=1\textwidth,height=0.75\textheight]{}<++><Esc>T{i
    inoremap <leader>fr \begin{frame}<Enter>\frametitle{}<Enter><++><Enter>\end{frame}<Enter><Enter><++><Esc>4kf}i
    inoremap <leader>cg \centering<Space>
    inoremap <leader>fig \begin{figure}<Enter><++><Enter>\end{figure}<Enter><++><Esc>2kS
    inoremap <leader>hr \href{}{<++>} <++><Esc>2T{i
    "  inoremap <leader>can \cand{}<Tab><++><Esc>T{i
    "  inoremap <leader>con \const{}<Tab><<++>Esc>T{i
    "  inoremap <leader>v \vio{}<Tab><++><Esc>T{i
    "  inoremap <leader>st <Esc>F{i*<Esc>f}i
    "  inoremap <leader>fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
    "  inoremap <leader>glos {\gll <++> \\<Enter><++> \\<Enter>\trans{``<++>''}}<Esc>2k2bcw
    "  inoremap <leader>bt {\blindtext}
    "  inoremap <leader>nu $\varnothing$
    "  inoremap <leader>rn (\ref{})<++><Esc>F}i
    "  inoremap <leader>ref \ref{} <++><Esc>T{i
