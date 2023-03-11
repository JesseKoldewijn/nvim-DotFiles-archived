-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- telescope
  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- ripgrep for telescope grep search
  use 'duane9/nvim-rg'

  -- fd for telescope
  use 'sharkdp/fd'

  -- Syntax goodness etc
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')

  -- Blazingly fast file jumping
  use('theprimeagen/harpoon')

  -- Escape hatch for monday morning coding
  use('mbbill/undotree')

  -- themes
  use {'jascha030/nitepal.nvim', as = 'nitepal'}
  
end)
