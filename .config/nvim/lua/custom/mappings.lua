local M = {}
local term_opts = { silent = true }
M.general = {
  n = {
    ["<S-l>"] = { ":bnext<CR>", "Next Buffer"},
    ["<S-h>"] = { ":bprevious<CR>", "Previous Buffer"},
  },
  i = {
    ["<C-s>"] = {"<esc><cmd> w <CR>", "Save file" },
    ["jk"] = {"<esc>", ""},
  },
  t = {
    ["<C-h>"] = {"<C-\\><C-N><C-w>h",  opts=term_opts},
    ["<C-j>"] = {"<C-\\><C-N><C-w>j",  opts=term_opts},
    ["<C-k>"] = {"<C-\\><C-N><C-w>k",  opts=term_opts},
    ["<C-l>"] = {"<C-\\><C-N><C-w>l",  opts=term_opts},
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    }
  },
}

M.hop = {
  n = {
    ["s"] = {"<cmd>:HopChar2<CR>", opts={silent=true}}
  }
}


return M
