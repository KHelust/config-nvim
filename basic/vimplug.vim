" Vim Plug config

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
  " FZF
      Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " FZF latest binary.
      Plug 'junegunn/fzf.vim' " FZF.
      Plug 'pbogut/fzf-mru.vim' " MRU with FZF.
  " Git
      Plug 'tpope/vim-fugitive' " Illegal Git Integration.
      Plug 'stsewd/fzf-checkout.vim' " Fzf git checout.
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
      Plug 'drewtempelmeyer/palenight.vim'
      Plug 'vim-airline/vim-airline'
  " Zen
      Plug 'junegunn/goyo.vim' " Focus Mode.
call plug#end()
