-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
	  "rose-pine/neovim",
	  as = "rose-pine",
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  }
      -- use {
      --         'nvim-treesitter/nvim-treesitter',
      --         run = function()
      --   	      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      --   	      ts_update()
      --         end,
      -- }
      use {
	      'nvim-treesitter/nvim-treesitter',
	      run = ':TSUpdate'
      }
      use {'nvim-treesitter/playground'}
      use {'theprimeagen/harpoon'}
      use {'mbbill/undotree'}
      use {'tpope/vim-fugitive'}
      use {
	      'VonHeikemen/lsp-zero.nvim',
	      branch = 'v3.x',
	      requires = {
		      {'williamboman/mason.nvim'},
		      {'williamboman/mason-lspconfig.nvim'},

		      {'neovim/nvim-lspconfig'},
		      {'hrsh7th/nvim-cmp'},
		      {'hrsh7th/cmp-nvim-lsp'},
		      {'L3MON4D3/LuaSnip'},
	      }
      }
      use {
        'lewis6991/gitsigns.nvim',
        config = function()
          require('gitsigns').setup()
        end
      }
      
end)
