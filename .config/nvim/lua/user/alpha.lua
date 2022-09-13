local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

math.randomseed(os.time())

local function pick_color()
    local colors = {"String", "Identifier", "Keyword", "Number"}
    return colors[math.random(#colors)]
end

local dashboard = require("alpha.themes.dashboard")
local logo = {
  "                                                     ",
  "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                     ",
}

dashboard.section.header.val = logo
dashboard.section.header.opts.hl = pick_color()

dashboard.section.buttons.val = {
  dashboard.button("f", "  find file", ":Telescope find_files <cr>"),
  dashboard.button("e", "  new file", ":ene <bar> startinsert <cr>"),
  dashboard.button("p", "  find project", ":Telescope projects <cr>"),
  dashboard.button("r", "  recently used files", ":Telescope oldfiles <cr>"),
  dashboard.button("t", "  find text", ":Telescope live_grep <cr>"),
  dashboard.button("c", "  configuration", ":e ~/.config/nvim/init.lua <cr>"),
  dashboard.button("q", "  quit neovim", ":qa<cr>"),
}

local function footer()
  -- local date = os.date("  %d/%m/%y ")
  -- local time = os.date("  %h:%m:%s ")
  local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
  --  local plugins = "  " .. #vim.tbl_keys(packer_plugins) .. " plugins "
  local plugins = "   " ..
      vim.fn.len(vim.fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1)) .. " plugins "

  local v = vim.version()
  local version = "  v" .. v.major .. "." .. v.minor .. "." .. v.patch

  return datetime .. plugins .. version
end

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "Constant"

dashboard.section.buttons.opts.hl = "keyword"

alpha.setup(dashboard.opts)

vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
