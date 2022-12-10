lvim.leader = "space"

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Normal Mode
keymap("n", "<C-s>", ":w<cr>", opts)
keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-s>", ":w<cr>", opts)
keymap("n", "<C-s>", ":w<cr>", opts)

-- Insert Mode
-- because I clearly cannot learn to exit insert before saving
keymap("i", "<C-s>", "<esc>:w<cr>", opts)
keymap("i", "jk", "<esc>", opts)
keymap("i", "kj", "<esc>", opts)

-- Visual Mode
keymap("v", "p", '"_dP', opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", opts)
