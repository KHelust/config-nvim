" RMarkdown ftplugin

" Settings:
  set breakindent
  set wrap
  set linebreak

" Compile:
  nnoremap <leader>rpd :write<CR> <bar> :RMarkdown! pdf<CR>
  nnoremap <leader>rpf :write<CR> <bar> :RMarkdown pdf<CR>
  nnoremap <leader>rph :write<CR> <bar> :RMarkdown<CR>
  nnoremap <leader>rpw :write<CR> <bar> :RMarkdown word<CR>

" Snippets:
  " YAML
    nnoremap <leader>ryl i---<Enter>title: <Enter>author: <++><Enter>mainfont: <++><Enter>sansfont: <++><Enter>monofont: <++><Enter>fontsize: <++>pt<Enter>geometry: "left=<++>cm,right=<++>cm,top=<++>cm,bottom=<++>cm"<Enter>bibliography: ../<++>.bib<Enter>csl: ../<++>.csl<Enter>output:<Enter><Tab>pdf_document:<Enter><Tab>keep_tex: <++>true or false<Enter>fig_caption: <++>true or false<Enter>number_sections: <++>true or false<Enter>latex_engine: xelatex<Enter>template: <++>.tex<Enter><Backspace><Backspace>---<Enter><Enter><++><Esc>ggjA

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
    inoremap <leader>1 #<Space><Enter><Enter><++><Esc>2kA
    inoremap <leader>2 ##<Space><Enter><Enter><++><Esc>2kA
    inoremap <leader>3 ###<Space><Enter><Enter><++><Esc>2kA
    inoremap <leader>4 ####<Space><Enter><Enter><++><Esc>2kA
    inoremap <leader>5 #####<Space><Enter><Enter><++><Esc>2kA
    inoremap <leader>6 ######<Space><Enter><Enter><++><Esc>2kA

  " Link URLs
    inoremap <leader>ur <https://><Esc>F/a
    inoremap <leader>wb [](<++>)<++><Esc>F[a

  " Link Headers (title in lowercase & spaces in hyphens)
    inoremap <leader>mh {#sec:}<++><Esc>F}i
    inoremap <leader>lh [](#sec:<++>)<++><Esc>F[a

  " Footnote
    inoremap <leader>fn ^[].<Esc>F[a

  " Image
    inoremap <leader>im ![ \label{<++>}](./<++>){#id .class width=<++>% height=<++>%}<++><Esc>F[a
    inoremap <leader>ri \ref{}<++><Esc>F}i

  " List
    inoremap <leader>bl *<Space>
    inoremap <leader>nl 1.<Space>

  " Cites
    inoremap <leader>tc @ <++><Esc>T@i
    inoremap <leader>ac [-@].<++><Esc>T@i
    inoremap <leader>pc [@].<++><Esc>T@i

  " Code
    inoremap <leader>co ```<Enter><++><Enter>```<Esc>2kA
    inoremap <leader>cr ```r<Enter><Enter>```<Enter><Enter><++><Esc>3ki

  " Code Insertion
    inoremap <leader>rch ```{r}<Enter><++><Enter>```<Enter><Enter><++><Esc>4kf}i
    inoremap <leader>rim ```{r , message=FALSE, echo=FALSE, fig.align='<++>', fig.cap='<++>', out.width='<++>%'}<Enter>knitr::include_graphics('<++>')<Enter>```<Enter><Enter><++><Esc>04kf,i
    inoremap <leader>ref \ref{fig:}<++><Esc>F}i
    inoremap <leader>rtm ```{r , message=FALSE, echo=FALSE, results='asis'}<Enter>require(pander)<Enter><++> <- matrix(c('<++>', '<++>'), ncol = <++>)<Enter>colnames(<++>) <- c('<++>', '<++>')<Enter>pandoc.table(<++>, caption = '\\label{tab:<++>}<++>', justify = '<++>', split.table = Inf)<Enter>```<Enter><Enter><++><Esc>07kf,i
    inoremap <leader>rtc ```{r , message=FALSE, echo=FALSE, results='asis'}<Enter>require(pander)<Enter><++> <- read.csv('./<++>.csv')<Enter>colnames(<++>) <- c('<++>', '<++>')<Enter>pandoc.table(<++>, caption = '\\label{tab:<++>}<++>', justify = '<++>', split.table = Inf)<Enter>```<Enter><Enter><++><Esc>07kf,i
    inoremap <leader>rta ```{r , message=FALSE, echo=FALSE, results='asis'}<Enter>require(pander)<Enter><++> <- read.csv('./<++>.csv')<Enter>pandoc.table(<++>, caption = '\\label{tab:<++>}<++>', justify = '<++>', split.table = Inf)<Enter>```<Enter><Enter><++><Esc>06kf,i
    inoremap <leader>rit <Esc>f'a, ''<Esc>ha
    inoremap <leader>ret \ref{tab:}<++><Esc>F}i

  " Guides
    inoremap <leader>gg <++>
    inoremap <leader>. <Esc>/<++><Enter>"_c4l
    nnoremap <leader>. <Esc>/<++><Enter>"_c4l
    vnoremap <leader>. <Esc>/<++><Enter>"_c4l
