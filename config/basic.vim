" Basic config

" Installing Vim-Plug
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
        echo "Downloading junegunn/vim-plug to manage plugins..."
        silent !mkdir -p ~/.config/nvim/autoload/
        silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
        autocmd VimEnter * PlugInstall
endif

" Install Plugins
call plug#begin('~/.config/nvim/plugged')
  " Completion
    if has("nvim")
      " Plug 'neovim/nvim-lspconfig'
      Plug 'neoclide/coc.nvim', {'branch': 'release'} " Completion
      Plug 'norcalli/nvim-colorizer.lua'  " The fastest Neovim colorizer.
    endif
      Plug 'liuchengxu/vim-which-key' " Displays available keybindings in popup.
  " Git
      Plug 'tpope/vim-fugitive' " Illegal Git Integration.
  " LaTeX
      Plug 'lervag/vimtex'
  " Markdown
      Plug 'dhruvasagar/vim-table-mode'
      Plug 'vim-pandoc/vim-criticmarkup'
      Plug 'vim-pandoc/vim-markdownfootnotes'
      Plug 'vim-pandoc/vim-pandoc'
      Plug 'vim-pandoc/vim-pandoc-after'
      Plug 'vim-pandoc/vim-pandoc-syntax'
      Plug 'jkramer/vim-checkbox'
  " Misc
      Plug 'voldikss/vim-floaterm'
      Plug 'vim-scripts/UniCycle'
      Plug 'easymotion/vim-easymotion' " Easy Movement.
  " Modifiers
      Plug 'tpope/vim-commentary' " Better Comments.
      Plug 'tpope/vim-surround' " Surround.
      Plug 'junegunn/rainbow_parentheses.vim' " Simpler Rainbow Parentheses.
      Plug 'pbrisbin/vim-mkdir'
      Plug 'vim-scripts/ReplaceWithRegister'
  " R Markdown
      Plug 'vim-pandoc/vim-rmarkdown'
      Plug 'chrisbra/NrrwRgn' " Narrow Region.
  " Syntax
      Plug 'mboughaba/i3config.vim'
  " Theme
      Plug 'joshdick/onedark.vim'
      Plug 'vim-airline/vim-airline'
  " Zen
      Plug 'junegunn/goyo.vim' " Focus Mode.
call plug#end()

" Settings
  set clipboard=unnamedplus                 " Use System clipboard.
  set cmdheight=1                           " More space for displaying messages.
  set cursorline                            " Horizontal line.
  set cursorcolumn                          " Vertical line.
  set expandtab                             " Spaces instead Tabs.
  set guicursor=                            " Mantain terminal style cursor.
  set hidden                                " Allow hidden files.
  set linebreak                             " Wrap long lines at character.
  set mouse=a                               " Enable your mouse.
  set nobackup                              " No backups.
  set noerrorbells                          " No ring bells.
  set nohlsearch                            " Stop highlighting hlsearch.
  set noswapfile                            " No swap files
  set nowritebackup                         " No backups.
  set number relativenumber                 " Linenumbers.
  set numberwidth=4                         " Number with 4 columns.
  set path+=**                              " Dirs for search.
  set pyxversion=3                          " Prefer Python 3.
  set shiftwidth=2                          " Spaces of ai.
  set shortmess+=c                          " Don't pass msgs |ins-completion-menu|.
  set smartcase                             " Override ignorecase.
  set smartindent                           " Smartindent at starting new line.
  set softtabstop=2                         " Spaces on softtabs.
  set splitright splitbelow                 " Better split windows.
  set tabstop=2                             " Spaces on tabs.
  set termguicolors                         " RGB color terminal.
  set timeoutlen=500                        " For use with vim-which-key
  set undofile                              " Saves undo history.
  set updatetime=300                        " Longer updatetime better experience.
  set shada=!,'10,<500,/50,:100,s100,h      " Config shada file.
  set wildmode=longest,list,full            " Completion style.
  set wrap                                  " Wrap long lines.

" Lettings
  let skip_defaults_vim = 1                 " Avoid defaults.
  let mapleader = "\<Space>"                " Mapleader.
  let maplocalleader = ","                  " maplocalleader.

" ColorScheme
  colorscheme onedark

" Nvim-Colorizer
  lua require'colorizer'.setup()

" Basic Autocommads
" Remove whitespace on save
  " autocmd BufWritePre * %s/\s\+$//e
" Unicode characters UniCycle
  autocmd VimEnter *.tex UniCycleOn
" Vertically center
  " autocmd InsertEnter * norm zz

" Fold files
" profile files
au BufWinLeave .profile mkview
au BufWinEnter .profile silent loadview
au BufWinLeave .bash_profile mkview
au BufWinEnter .bash_profile silent loadview
au BufWinLeave .zprofile mkview
au BufWinEnter .zprofile silent loadview
" aliases
au BufWinLeave aliases mkview
au BufWinEnter aliases silent loadview
au BufWinLeave bash_aliases mkview
au BufWinEnter bash_aliases silent loadview
" Other files
au BufWinLeave comandos mkview
au BufWinEnter comandos silent loadview
au BufWinLeave i3.config mkview
au BufWinEnter i3.config silent loadview
au BufWinLeave config mkview
au BufWinEnter config silent loadview

" Hightlight Yank
  augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
  augroup END

" Netrw
  let g:netrw_banner = 0
  let g:netrw_liststyle = 3
  let g:netrw_altv = 1
  let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

" Newline
  " Create new line at end of chain
    function! Chomp(str)
    	return substitute(a:str, '\n$', '', '')
    endfunction
  " Commenting new line
    autocmd BufEnter * setlocal formatoptions-=cro

" Syntax Highlighting
  function! <SID>SynStack()
    if !exists("*synstack")
      return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
  endfunc

" VimStartup
  augroup vimStartup
    au!
      autocmd BufReadPost *
       \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
       \ |   exe "normal! g`\""
      \ | endif
  augroup END

" Floaterm
  let g:floaterm_autoclose = 1

" Vim-Airline
  let g:airline#extensions#wordcount#enabled = 1
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1

