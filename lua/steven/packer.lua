-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  -- colorschemes
  -- rebelot/kanagawa.nvim
  -- rose-pine/neovim
  use({
	  "rebelot/kanagawa.nvim",
	  as = 'kanagawa',
	  config = function()
		  vim.cmd("colorscheme kanagawa-dragon")
	  end
  })
  --[[ 
    require('packer').startup(function(use)
  use({ 'rose-pine/neovim', as = 'rose-pine' })
end)
  --]]

-- treesitter
use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use( 'nvim-treesitter/playground')

-- undo tree
use('mbbill/undotree')

-- git usage
use('tpope/vim-fugitive')

-- harpoon file navigator
use('theprimeagen/harpoon')

-- lsp
use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'}, 
        {'hrsh7th/cmp-nvim-lua'},

        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
    }
} 

-- nvim tree file navigator
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', 
  },
}

end)
