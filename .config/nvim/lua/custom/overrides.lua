local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "typescript",
    "tsx",
    "markdown",
    "python",
    "javascript",
    "cmake",
  },
  autotag = {
    enable = true,
  },
}

M.mason = {
    ensure_installed = {
      "rust-analyzer",
      "clangd",
      "clang-format",
      "codelldb",
      "python-lsp-server",
      "gopls",
      "typescript-language-server",
      "eslint-lsp",
      "prettier",
      "js-debug-adapter",
      "html-ls",
      "css-ls",
      "tsx",
      "markdown",
    },
}

return M
