local custom_theme = require("lualine.themes.gruvbox")
custom_theme.normal.c.bg = "#0000000" -- transparent background
custom_theme.insert.a.bg = "#0000000"

require("lualine").setup({
	options = {
		icons_enabled = true,
		disabled_filetypes = {
			statusline = {
				"alpha",
				"neo-tree",
			},
		},
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diagnostics" },
		lualine_c = { "filename", "diff" },
		lualine_x = { "lsp_status", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
})
