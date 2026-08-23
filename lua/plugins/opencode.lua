return {
	"nickjvandyke/opencode.nvim",
	version = "*", -- latest stable release
	config = function()
		vim.keymap.set({ "n", "x" }, "<c-a>", function()
			require("opencode").ask("@this: ")
		end, { desc = "ask opencode…" })
		vim.keymap.set({ "n", "x" }, "<c-x>", function()
			require("opencode").select()
		end, { desc = "select opencode…" })
		vim.keymap.set({ "n", "x" }, "go", function()
			return require("opencode").operator("@this ")
		end, { desc = "append range to opencode", expr = true })
		vim.keymap.set({ "n" }, "goo", function()
			return require("opencode").operator("@this ") .. "_"
		end, { desc = "append line to opencode", expr = true })
		vim.keymap.set({ "n" }, "<s-c-u>", function()
			require("opencode").command("session.half.page.up")
		end, { desc = "scroll opencode up" })
		vim.keymap.set({ "n" }, "<s-c-d>", function()
			require("opencode").command("session.half.page.down")
		end, { desc = "scroll opencode down" })
	end,
}
