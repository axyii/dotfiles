" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    "Airline
    Plug 'vim-airline/vim-airline'
    "Colours showing
    Plug 'ap/vim-css-color'
    Plug 'joshdick/onedark.vim'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
    Plug 'kaicataldo/material.vim'
    Plug 'wojciechkepka/bogster'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}"Install npm for this plugin

call plug#end()
"coc-html
"coc-tsserver
"coc-pyright
"coc-json
"coc-go - To work install gopls
"coc-css
