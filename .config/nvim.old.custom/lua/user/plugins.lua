local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- Package manager
  use "wbthomason/packer.nvim" -- The packer manage itself

  -- Needs to load first
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use { 'kyazdani42/nvim-web-devicons' } -- Dev icons

  -- General Plugins
  use "p00f/nvim-ts-rainbow" -- rainbow brackets
  use "nvim-lualine/lualine.nvim" -- status line
  use "windwp/nvim-autopairs" -- autopair, intergrates with cmp and treesitter
  use "numToStr/Comment.nvim" -- easy commenting
  use {
    "kyazdani42/nvim-tree.lua", -- Nvim Tree
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    tag = 'nightly'
  }
  use {
    "akinsho/bufferline.nvim", -- Bufferline
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    tag = "v2.*",
  }
  use {"famiu/bufdelete.nvim"} -- better bdelete
  use {
    "akinsho/toggleterm.nvim",
    tag = "v2.*",
  }
  use "ahmedkhalf/project.nvim"
  use "lewis6991/impatient.nvim" -- adds cache for speed
  use "lukas-reineke/indent-blankline.nvim"
  use "rcarriga/nvim-notify" -- notification bar
  use "folke/which-key.nvim" -- key finder
  use {
    "goolord/alpha-nvim", -- dashboard
    requires = { 'kyazdani42/nvim-web-devicons' }
  }
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  -- Languages
  use "jalvesaq/Nvim-R" -- R language
  use "mfussenegger/nvim-jdtls" -- Java
  use {
    "fatih/vim-go", -- Go
    run = ":GoUpdateBinaries",
  }

  -- Colorschemes
  use "gruvbox-community/gruvbox"
  use "sainnhe/gruvbox-material"

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"

  -- Snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  -- use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use "https://git.sr.ht/~whynothugo/lsp_lines.nvim" -- virtual lines

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- DAP
  use "mfussenegger/nvim-dap"
  use "rcarriga/nvim-dap-ui"
  use "ravenxrz/DAPInstall.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
