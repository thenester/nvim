local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.cmd("set listchars=space:·")
vim.cmd("set guicursor+=n:blinkon1")
vim.g.mapleader = " "
vim.wo.number = true    -- show line numbers
vim.opt.swapfile = false
vim.o.list = true       -- render whitespaces
vim.o.cursorline = true -- enable cursorline
vim.o.scrolloff = 999   -- keep the cursor in the middle
vim.opt.signcolumn = "yes"

require("lazy").setup("plugins")
require("configs")

-- Set the theme
vim.cmd("colorscheme tokyonight-moon")
