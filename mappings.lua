---@type MappingsTable
local M = {}

-- Disable keymaps
M.disabled = {
  n = {
    ["<C-c>"] = ""
  }
}

-- Custom bindings
M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-f>"] = { "<cmd>silent !tmux neww tmux-sessionizer<CR>" },

  },

  v = {
    [">"] = { ">gv", "indent"},
  },
}

return M
