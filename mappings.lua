---@type MappingsTable
local M = {}

-- Disable keymaps
M.disabled = {
  n = {
    ["<C-c>"] = "",
  },
}

-- Custom bindings
M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- ["<C-f>"] = { "<cmd>silent !tmux new tmux-sessionizer<CR>" },
    ["<leader>q"] = { "<cmd>Trouble diagnostics<CR>" },
  },

  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.nvterm = {
  n = {
    ["<leader>i"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },
  }
}

return M
