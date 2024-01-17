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
    ["<leader>q"] = { "<cmd>Trouble workspace_diagnostics<CR>" },
  },

  v = {
    [">"] = { ">gv", "indent" },
  },
}

return M
