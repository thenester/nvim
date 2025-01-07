require("telescope").setup({
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
      }
    },
    ["recent_files"] = {
      only_cwd = true
    }
  },
  pickers = {
    colorscheme = {
      enable_preview = true
    }
  }
})

require("telescope").load_extension("ui-select")
require("telescope").load_extension("recent_files")
