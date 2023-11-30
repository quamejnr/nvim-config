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
-- Project Manager
M.projects = {
  n = {
    ["<leader>fp"] = { "<cmd> ProjectMgr<CR>", "Open Projects"}
    },
}

-- Markdown Glow
-- M.glow = {
--   n = {
--     ["<leader>og"] = { "<cmd> Glow<CR>", "Open Glow"}
--   }
-- }

return M
