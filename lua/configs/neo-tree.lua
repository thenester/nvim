local nt = require("neo-tree")

nt.setup({
	popup_border_style = "rounded",
	close_if_last_window = true,
	window = {
		-- position = "left",
		position = "float",
		width = 30,
		mappings = {
			["<Tab>"] = {
				"toggle_node",
				nowait = false,
			},
		},
	},
	filesystem = {
		follow_current_file = {
			enabled = true,
			leave_dirs_open = true,
		},
	},
	buffers = {
		follow_current_file = {
			enabled = true,
			leave_dirs_open = true,
		},
	},
})
