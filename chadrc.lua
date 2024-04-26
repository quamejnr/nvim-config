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
        green = "#89b482",
        blue = "#89b482",
        statusline_bg = "#191b1c"
      },
      base_16 = {
        base00 = "#191b1c",
      },
    },
  },

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    theme = "vscode_colored",
    separator_style = "default",
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
