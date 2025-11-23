return {
	{
		"j-hui/fidget.nvim",
	},
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"saghen/blink.cmp",
		lazy = false,
		dependencies = { "L3MON4D3/LuaSnip", version = "v2.*" },
		version = "*",
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },
	},
}
