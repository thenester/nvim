return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local theme = require("alpha.themes.theta")
		local dashboard = require("alpha.themes.dashboard")
		theme.file_icons.provider = "devicons"
		theme.header.val = {
			[[]],
			[[███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
			[[████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
			[[██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
			[[██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
			[[██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
			[[╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
			[[]],
		}
		theme.buttons.val = {
			{ type = "text", val = "Quick menu", opts = { hl = "SpecialComment", position = "center" } },
			{ type = "padding", val = 1 },
			dashboard.button("e", "  New file", "<cmd>ene<CR>"),
			dashboard.button("SPC SPC", "󰈞  Find file"),
			dashboard.button("SPC f w", "  Live grep"),
			dashboard.button("dn", "  Neovim configuration", ":cd ~/.config/nvim<CR>"),
			dashboard.button("df", "  Dotfiles", ":cd ~/.dotfiles<CR>"),
			dashboard.button("u", "󱧘  Update plugins", ":Lazy sync<CR>"),
			dashboard.button("m", "󰏗  Mason", ":Mason<CR>"),
			dashboard.button("q", "󰩈  Quit", "<cmd>qa<CR>"),
		}
		alpha.setup(theme.config)
	end,
}
