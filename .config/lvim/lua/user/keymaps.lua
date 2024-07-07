M = {}
lvim.leader = "space"

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<S-x>"] = ":BufferKill<CR>"

lvim.keys.insert_mode["<C-s>"] = "<ESC>:w<CR>"
lvim.keys.insert_mode["jk"] = "<ESC>"

lvim.keys.visual_mode["y"] = '"+y'

return M
