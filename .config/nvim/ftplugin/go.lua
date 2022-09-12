local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
  L = {
    name = "Go",
    b = { "<cmd>GoBuild<Cr>", "Build (jump)" },
    B = { "<cmd>GoBuild!<Cr>", "Build (stay)" },
    c = { "<cmd>GoCoverage<Cr>", "Test Coverage" },
    C = { "<cmd>GoCoverageToggle<Cr>", "Toggle Test Coverage" },
    r = { "<cmd>GoRun %<Cr>", "Run" },
    t = {
      name = "Test",
      a = { "<cmd>GoTest<cr>", "Run All Tests" },
      c = { "<cmd>GoTestCompile<cr>", "Compile Tests" },
      f = { "<cmd>GoTestFunc<cr>", "Test Function" },
    },
  },
}

which_key.register(mappings, opts)

local notify_filter = vim.notify
vim.notify = function(msg, ...)
  if msg:match "message with no corresponding" then
    return
  end

  notify_filter(msg, ...)
end

vim.api.nvim_set_keymap("n", "<m-d>", "<cmd>RustOpenExternalDocs<Cr>", { noremap = true, silent = true })
