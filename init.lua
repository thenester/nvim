-- General settings
vim.cmd("set listchars=space:·")
vim.cmd("set guicursor+=n:blinkon1")
vim.g.mapleader = " "
vim.wo.number = true    -- show line numbers
vim.wo.rnu = true       -- relative numbers
vim.opt.swapfile = false
vim.o.list = true       -- render whitespaces
vim.o.cursorline = true -- enable cursorline
vim.o.scrolloff = 999   -- keep the cursor in the middle
vim.opt.signcolumn = "yes"
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.showmatch = true
vim.opt.autoread = true
vim.opt.clipboard:append("unnamedplus") -- system clipboard

vim.diagnostic.config({ virtual_text = { current_line = true } })

require("configs")

-- Set the theme
vim.cmd("colorscheme catppuccin-mocha")
