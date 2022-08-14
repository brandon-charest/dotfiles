local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = { "java", "lua", "javascript"},
  sync_install = false,
  auto_install = true,
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
  autopairs = {
    enable = true
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- also highlight non-bracket delimiters like html tags, boolean or table: lang --> boolean
    max_file_lines = nil,
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of color name strings
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
