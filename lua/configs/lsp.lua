require("mason-lspconfig").setup({
	lazy = false,
	automatic_installation = true,
})

require("mason-tool-installer").setup({
	ensure_installed = {
		"lua_ls",
		"stylua",
		"zls",
		"clangd",
		"gopls",
		"delve",
		"ruff",
	},
	auto_update = true,
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = {
					"vim",
					"require",
				},
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
})

require("luasnip.loaders.from_vscode").lazy_load()

require("blink.cmp").setup({
	keymap = {
		preset = "enter",
		["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
		["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
		["K"] = { "show_documentation" },
	},

	completion = {
		-- trigger = { show_on_trigger_character = true },
		keyword = { range = "full" },
		accept = { auto_brackets = { enabled = false } },
		ghost_text = { enabled = true },

		documentation = {
			auto_show = true,
			auto_show_delay_ms = 500,
			window = { border = "rounded" },
		},

		menu = {
			auto_show = function(ctx)
				local buftype = vim.api.nvim_buf_get_option(0, "buftype")
				-- Skip for command line and prompts
				if buftype == "prompt" or ctx.mode == "cmdline" then
					return false
				end
				return not vim.api.nvim_win_get_config(0).relative ~= ""
			end,
			border = "rounded",
			draw = {
				treesitter = { "lsp" },
				columns = {
					{ "kind_icon", "label", "label_description", gap = 1 },
					{ "kind", gap = 1, "source_name" },
				},
			},
		},
	},

	signature = {
		enabled = true,
		window = { border = "rounded", show_documentation = true },
	},

	appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = "normal",
	},

	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
		providers = {
			lsp = {
				name = "lsp",
				enabled = true,
				module = "blink.cmp.sources.lsp",
				score_offset = 1000,
			},
			snippets = {
				name = "snippets",
				enabled = true,
				module = "blink.cmp.sources.snippets",
				score_offset = 950,
			},
			path = {
				name = "path",
				module = "blink.cmp.sources.path",
				score_offset = 3,
				fallbacks = { "snippets", "luasnip", "buffer" },
				opts = {
					trailing_slash = false,
					label_trailing_slash = true,
					get_cwd = function(context)
						return vim.fn.expand(("#%d:p:h"):format(context.bufnr))
					end,
					show_hidden_files_by_default = true,
				},
			},
			buffer = {
				name = "Buffer",
				module = "blink.cmp.sources.buffer",
				min_keyword_length = 2,
			},
		},
	},
})
