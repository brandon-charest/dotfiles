local plugins = {
  {
    "p00f/nvim-ts-rainbow",
    event = "VeryLazy",
  },
  {
    "windwp/nvim-autopairs",
    event = "VeryLazy",
  },
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "custom.configs.formatter"
    end,
  },
  {
    "smoka7/hop.nvim",
    event = "BufRead",
    config = function ()
      require("custom.configs.hop")
    end
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {}
    },
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "custom.configs.dap"
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
 {
    "nvim-treesitter/nvim-treesitter",
    config = function ()
      require "plugins.configs.treesitter"
      require "custom.configs.treesitter"
    end,
  },
 {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
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
        "markdown"
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function ()
      require "custom.configs.lint"
    end
  }
}
return plugins
