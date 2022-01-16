return require('packer').startup(function()
    
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Color scheme and Pretty stuff 
  use { 'folke/tokyonight.nvim' }
--  use { 'mhinz/vim-startify'}
  use {'kyazdani42/nvim-web-devicons'}
  use{'glepnir/dashboard-nvim'}
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {'norcalli/nvim-colorizer.lua'}
  use {'navarasu/onedark.nvim'}
  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  --Auto Pairs
  use {'jiangmiao/auto-pairs'}

  -- LSP and completion
  use {'sheerun/vim-polyglot'}
  use { 'neovim/nvim-lspconfig' }
  use {'neoclide/coc.nvim', branch = 'release'}
--  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  --coc-html
  --coc-tsserver
  --coc-pyright
  --coc-json
  --coc-go - To work install gopls
  --coc-css
  --coc-markdownlint

end)
