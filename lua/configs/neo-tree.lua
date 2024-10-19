local nt = require("neo-tree")

nt.setup({
  popup_border_style = "rounded",
  window = {
    width = 30,
    mappings = {
      ["<Tab>"] = {
        "toggle_node",
        nowait = false,
      },
    }
  }
})
