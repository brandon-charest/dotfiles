require "config.keymaps"
require "config.lsp"
require "config.options"
require "config.plugins"
require "config.telescope"
require "config.treesitter"
require "config.which-key"


vim.api.nvim_create_autocmd("FileType", {
  pattern = "zsh",
  callback = function()
    -- let treesitter use bash highlight for zsh files as well
    require("nvim-treesitter.highlight").attach(0, "bash")
  end,
})
