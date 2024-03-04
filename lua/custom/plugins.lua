local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        --defaults
        "vim",
        "lua",

        --Nodejs and web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "jsdoc",
        "json",
        "vue",
        "svelte",
        "http",

        -- Python
        "python",

        -- .NET
        "c_sharp",

        -- Golang
        "go",

        --low code compiler
        "c",
        "cpp",
        "llvm",
        "zig",
      },
    },
  },
  -- {
  --   "rcarriga/nvim-dap-ui",
  --   event = "VeryLazy",
  --   dependencies = "mfussenegger/nvim-dap",
  --   config = function()
  --     local dap = require "dap"
  --     local dapui = require "dapui"
  --     require("dapui").setup()
  --     dap.listeners.after.event_initialized["dapui_config"] = function()
  --       dapui.open()
  --     end
  --     dap.listeners.before.event_terminated["dapui_config"] = function()
  --       dapui.close()
  --     end
  --     dap.listeners.before.event_exited["dapui_config"] = function()
  --       dapui.close()
  --     end
  --   end,
  -- },
  -- {
  --   "mfussenegger/nvim-dap",
  --   config = function()
  --     require "custom.configs.dap"
  --     require("core.utils").load_mappings "dap"
  --   end,
  -- },
  {
    {
      "williamboman/mason.nvim",
      opts = {
        ensure_installed = {
          -- lua
          "lua-language-server",
          "stylua",

          -- Nodejs , javascript
          "css-lsp",
          "html-lsp",
          "emmet-language-server",
          "prettier",
          "eslint-lsp",
          "typescript-language-server",
          "vue-language-server",
          "svelte-language-server",
          "tailwindcss-language-server",
          "angular-language-server",
          "js-debug-adapter",

          -- low level
          "clangd",
          "clang-format",

          -- python
          "pyright",

          -- .NET

          -- Golang
          "gopls",
        },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "rest-nvim/rest.nvim",
    dependencies = { { "nvim-lua/plenary.nvim" } },
    config = function()
      return require "custom.configs.rest-nvim"
    end,
  },
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    config = function()
      return require "custom.configs.none-ls"
    end,
  },
  {
    "github/copilot.vim",
    lazy = false,
    config = function()
      return require "custom.configs.copilot"
    end,
  },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   config = function()
  --     return require "custom.configs.tokyonight"
  --   end,
  -- },
  { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
  {
    "rmagatti/auto-session",
    event = "VimEnter",
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/AppData/", "D:/Work/Project" },
        session_lens = {
          buftypes_to_ignore = {},
          load_on_setup = true,
          theme_conf = { border = true },
          previewer = false,
        },

        vim.keymap.set("n", "<leader>ls", require("auto-session.session-lens").search_session, {
          noremap = true,
        }),
      }
    end,
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
return plugins
