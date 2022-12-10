lvim.plugins = {
    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
    },
    "norcalli/nvim-colorizer.lua",
    {
      "phaazon/hop.nvim",
      event = "BufRead",
      config = function()
        require("hop").setup()
        vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
        vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
      end,
    },
    {
      "windwp/nvim-ts-autotag",
      config = function()
        require("nvim-ts-autotag").setup()
      end,
    },
    "p00f/nvim-ts-rainbow",
    "tpope/vim-repeat",
    "tpope/vim-surround",
    "mfussenegger/nvim-jdtls", -- Java 
    {
      "fatih/vim-go", -- Go
      run = ":GoUpdateBinaries",
    },
  -- Colorschemes
    "gruvbox-community/gruvbox", 
    "sainnhe/gruvbox-material",
}
