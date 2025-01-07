return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    indent = { enable = false },
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "ruby",
        "javascript", -- Essential for web development
        "typescript", -- For modern JavaScript development
        "json", -- For working with configuration files
        "yaml", -- For handling YAML files
        "markdown", -- For documentation
        "bash", -- For shell scripting
        "python", -- For Python projects
        "java", -- For enterprise-level programming
        "dockerfile", -- For containerized applications
        "tsx", -- For React/TypeScript
        "embedded_template",
      },
    },
  },
  {
    "nvim-lua/plenary.nvim",
  },
}
