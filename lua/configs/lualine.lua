require("lualine").setup {
  options = {
    theme = "nord",
    icons_enabled = true,
    disabled_filetypes = {
      statusline = {
        "alpha",
        "neo-tree",
      },
    },
    component_separators = { left = "▎", right = "▎" },
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
