return {
	{
		"AlexvZyl/nordic.nvim",
		priority = 1000,
	},
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		-- opts = {
		--   transparent = true
		-- }
	},
	{
		"sainnhe/gruvbox-material",
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_enable_italic = true
			vim.g.gruvbox_material_background = "hard"
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		-- opts = {
		--   transparent_background = true
		-- }
	},
	{
		"projekt0n/github-nvim-theme",
		priority = 1000,
	},
	{
		"vague2k/vague.nvim",
		priority = 1000,
		opts = {
			colors = {
				bg = "#25282d",
				line = "#1f2124",
			},
		},
	},
}
