local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

{
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "nvimtools/none-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",
        "markdown",
        "markdown_inline",
        "proto",
        "csv",
        "gomod",
        "gosum",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "vue",
        "svelte",

        "python",
        "go",

        -- low level
        "c",
        "zig",
      },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  -- {
  --   "ellisonleao/glow.nvim",
  --   config = true,
  --   cmd = "Glow",
  --   keys = {
  --     {
  --       "<leader>og",
  --       "<cmd>Glow<CR>",
  --       desc = "Markdown",
  --     },
  --   },
  -- },
  -- Lazygit plugin
  {
    "kdheepak/lazygit.nvim",
    lazy = false,
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      {
        "<leader>lg",
        "<cmd>LazyGit<CR>",
        desc = "LazyGit",
      },
    },
  },

  -- Raycast plugin for creating code snippets
  {
    "TobinPalmer/rayso.nvim",
    cmd = { "Rayso" },
    config = function()
      require("rayso").setup {}
    end,
  },
  -- Todo plugin
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "simrat39/symbols-outline.nvim",
    lazy = false,
    opts = {},
  },
  {
    "folke/trouble.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  -- zen
  -- {
  --   "folke/zen-mode.nvim",
  --   lazy = false,
  -- },
  {
    -- Treesitter context
    "nvim-treesitter/nvim-treesitter-context",
    lazy = false,
    opts = {},
  },

  {
    -- Make sure to setup it properly if you have lazy=true
    "MeanderingProgrammer/render-markdown.nvim",
    lazy = false,
  },
  -- debugger
  -- {
  --   "rcarriga/nvim-dap-ui",
  --   dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio", "leoluz/nvim-dap-go" },
  --   lazy = false,
  --   config = function()
  --     require("dap-go").setup()
  --
  --     local dap, dapui = require "dap", require "dapui"
  --
  --     dapui.setup()
  --
  --     dap.listeners.before.attach.dapui_config = function()
  --       dapui.open()
  --     end
  --     dap.listeners.before.launch.dapui_config = function()
  --       dapui.open()
  --     end
  --     dap.listeners.before.event_terminated.dapui_config = function()
  --       dapui.close()
  --     end
  --     dap.listeners.before.event_exited.dapui_config = function()
  --       dapui.close()
  --     end
  --   end,
  --   keys = {
  --     { "<leader>tb", "<cmd>DapToggleBreakpoint<cr>", desc = "Toggle debugger breakpoint" },
  --     { "<leader>tc", "<cmd>DapContinue<cr>",         desc = "Continue running debugger" },
  --     { "<leader>tx", "<cmd>DapTerminate<cr>",        desc = "Kill Debugger" },
  --     { "<leader>ts", "<cmd>DapStepOver<cr>",         desc = "Step over Debugger" },
  --     { "<leader>tu", "<cmd>DapToggleRepl<cr>",       desc = "open Debugger Repl" },
  --   },
  -- },
  -- Leetcode

  -- {
  --   "kawre/leetcode.nvim",
  --   build = ":TSUpdate html",
  --   lazy = false,
  --   dependencies = {
  --     "nvim-telescope/telescope.nvim",
  --     "nvim-lua/plenary.nvim", -- required by telescope
  --     "MunifTanjim/nui.nvim",
  --
  --     -- optional
  --     "nvim-treesitter/nvim-treesitter",
  --     -- "rcarriga/nvim-notify",
  --     "nvim-tree/nvim-web-devicons",
  --   },
  --   opts = {
  --     -- configuration goes here
  --   },
  -- },
}

return plugins
