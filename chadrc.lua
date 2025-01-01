---@type ChadrcConfig
local M = {}


-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "gruvchad",
  theme_toggle = { "gruvchad", "one_light" },
  changed_themes = {
    gruvchad = {
      base_30 = {
        folder_bg = "#89b482",
        green = "#89cb82",
        blue = "#89cb82",
        statusline_bg = "#131313",
      },
      base_16 = {
        base00 = "#131313",
      },
    },
  },

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    theme = "vscode_colored",
    overriden_modules = function(modules)
      modules[2] = (function()
        local name = vim.fn.expand("%:.")
        if name == "" then
          return "%##  "
        end
        return "%##  " .. name .. "  "
      end)()
    end,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
