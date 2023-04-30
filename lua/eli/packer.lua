-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use "EdenEast/nightfox.nvim"
  use "morhetz/gruvbox"
  use 'shaunsingh/solarized.nvim'
  use 'shaunsingh/nord.nvim'


  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    "startup-nvim/startup.nvim",
    requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    config = function()
        require"startup".setup()
    end
  }

  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
        {"nvim-lua/plenary.nvim"},
        {"nvim-treesitter/nvim-treesitter"}
    }
  }

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
  use( 'nvim-treesitter/playground' )

  use( 'theprimeagen/harpoon' )
  use( 'mbbill/undotree' )
  use( 'tpope/vim-fugitive' )

  use {
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v1.x',
	    requires = {
	      -- LSP Support
	      {'neovim/nvim-lspconfig'},             -- Required
	      {'williamboman/mason.nvim'},           -- Optional
	      {'williamboman/mason-lspconfig.nvim'}, -- Optional

	      -- Autocompletion
	      {'hrsh7th/nvim-cmp'},         -- Required
	      {'hrsh7th/cmp-nvim-lsp'},     -- Required
	      {'hrsh7th/cmp-buffer'},       -- Optional
	      {'hrsh7th/cmp-path'},         -- Optional
	      {'saadparwaiz1/cmp_luasnip'}, -- Optional
	      {'hrsh7th/cmp-nvim-lua'},     -- Optional

	      -- Snippets
	      {'L3MON4D3/LuaSnip'},             -- Required
	      {'rafamadriz/friendly-snippets'}, -- Optional
	    }
  }

  use( 'SirVer/ultisnips' )
  use( 'mlaursen/vim-react-snippets' )
  use( 'morgsmccauley/vim-react-native-snippets' )

end)

