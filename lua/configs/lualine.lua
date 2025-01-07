local lualine = require("lualine")

local custom_theme = require("lualine.themes.moonfly")
custom_theme.normal.c.bg = "#0000000" -- transparent background
custom_theme.insert.a.bg = "#9d7cd6"

lualine.setup {
  options = {
    theme = custom_theme,
    icons_enabled = true,
    disabled_filetypes = {
      statusline = {
        "alpha",
        "neo-tree",
      },
    },
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { "filename" },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" }
  },
}
