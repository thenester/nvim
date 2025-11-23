-- General settings
vim.g.mapleader = " "
vim.o.number = true -- show line numbers
vim.o.rnu = true -- relative numbers
vim.o.swapfile = false
vim.o.list = true -- render whitespaces
vim.o.cursorline = true -- enable cursorline
vim.o.scrolloff = 999 -- keep the cursor in the middle
vim.o.signcolumn = "yes"
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.termguicolors = true
vim.o.showmatch = true
vim.o.autoread = true
vim.o.winborder = "rounded"
vim.o.undofile = true
vim.opt.listchars:append({ space = "·" })
vim.opt.clipboard:append("unnamedplus") -- system clipboard

vim.diagnostic.config({ virtual_text = { current_line = true } })

require("configs")

-- Set the theme
vim.cmd("colorscheme gruvbox-material")
