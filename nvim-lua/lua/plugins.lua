return require('packer').startup(function()

  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Color scheme and Pretty stuff
  use { 'folke/tokyonight.nvim' }
--  use { 'mhinz/vim-startify'}
  use {'kyazdani42/nvim-web-devicons'}
--  use{'glepnir/dashboard-nvim'}
  use {
    'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
--  use{'windwp/windline.nvim'}
  use {'norcalli/nvim-colorizer.lua'}
  use {'navarasu/onedark.nvim'}
  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }

  --Auto Pairs
--  use {'jiangmiao/auto-pairs'}
    use {'windwp/nvim-autopairs',
        config = function()
            require("nvim-autopairs").setup {}
          end
    }

--    use {'windwp/nvim-ts-autotag'} --use this with treesitter

  -- LSP and completion
--  use {'sheerun/vim-polyglot'}
--  use {'jaxbot/semantic-highlight.vim'}
  use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        'VonHeikemen/lsp-zero.nvim',

    }
  use {'hrsh7th/nvim-cmp'}-- Autocompletion plugin
  use {'hrsh7th/cmp-nvim-lsp'}-- LSP source for nvim-cmp
  use {'saadparwaiz1/cmp_luasnip'}-- Snippets source for nvim-cmp
  use {'L3MON4D3/LuaSnip'}-- Snippets plugin
--  use {'neoclide/coc.nvim', branch = 'release'}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  --coc-html
  --coc-tsserver
  --coc-pyright
  --coc-json
  --coc-go - To work install gopls
  --coc-css
  --coc-markdownlint

end)
