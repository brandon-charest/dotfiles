
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
  C = {
    name = "Go",
    a = { "<cmd>GoTestAdd<Cr>", "Add Test" },
    A = { "<cmd>GoTestsAll<Cr>", "Add All Tests" },
    b = { "<cmd>GoBuild<Cr>", "Build (jump)" },
    B = { "<cmd>GoBuild!<Cr>", "Build (stay)" },
    c = { "<cmd>GoCoverage<Cr>", "Test Coverage" },
    C = { "<cmd>GoCoverageToggle<Cr>", "Toggle Test Coverage" },
    g = { "<cmd>GoGenerate<Cr>", "Go Generate" },
    G = { "<cmd>GoGenerate %<Cr>", "Go Generate File" },
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

vim.api.nvim_set_keymap("n", "<m-d>", "<cmd>GoDocBrowser<Cr>", { noremap = true, silent = true })
