local packer_present, packer = pcall(require, "packer")

if not packer_present then
	vim.notify("packer not found!")
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- Plugin/package management for Neovim
  use "wbthomason/packer.nvim"
  
  -- Neovim statusline written in Lua
  use "nvim-lualine/lualine.nvim"

  -- Adds VSCode-like pictograms to neovim built-in lsp
  use "onsails/lspkind-nvim"

  -- Neovim LSP
  use "neovim/nvim-lspconfig"

  -- Gruvbox colorscheme
  use "ellisonleao/gruvbox.nvim"

  -- Lua module for asynchronous programming using coroutines
  use "nvim-lua/plenary.nvim"

  -- A light-weight lsp plugin with a highly performant UI
  use "glepnir/lspsaga.nvim"

  -- Provides the same icons as well as colors for each icon
  use "kyazdani42/nvim-web-devicons"

  -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use "jose-elias-alvarez/null-ls.nvim"

  -- A Git wrapper so awesome, it should be illegal 
  use "tpope/vim-fugitive"

  -- Designed to make you better at Vim Movements
  use "ThePrimeagen/vim-be-good"

  -- Easily install and manage LSP servers, DAP servers, linters, and formatters
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  --  Highly extendable fuzzy finder for files
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"

  -- Autopairs and autotag for Neovim
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"

  -- Completion engine for neovim written in Lua
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"

  -- treesitter-based highlighting
  use ("nvim-treesitter/nvim-treesitter", {
    run = ":TSUpdate"
  })
end)
