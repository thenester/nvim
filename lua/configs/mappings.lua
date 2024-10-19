require("which-key").add({
  -- Main screen
  { "<leader>A",        ":Alpha<CR>",                                                   desc = "Main dashboard",                         mode = "n" },
  -- Neotree
  { "<leader><Tab>",    ":Neotree toggle<CR>",                                          desc = "Neotree",                                mode = "n" },
  -- Lazy
  { "<leader>L",        ":Lazy<CR>",                                                    desc = "Lazy plugins manager",                   mode = "n" },
  -- Telescope
  { "<leader><leader>", ":Telescope find_files<CR>",                                    desc = "Find file",                              mode = "n" },
  { "<leader>fw",       ":Telescope live_grep<CR>",                                     desc = "Find word",                              mode = "n" },
  { "<leader>fF",       ":Telescope lsp_document_symbols symbols=function<CR>",         desc = "Find functions",                         mode = "n" },
  { "<leader>b",        ":Telescope buffers<CR>",                                       desc = "Buffers",                                mode = "n" },
  { "<leader>fs",       ":Telescope lsp_document_symbols<CR>",                          desc = "LSP symbols" },
  { "<leader>fh",       ":lua require('telescope').extensions.recent_files.pick()<CR>", desc = "Recent files",                           mode = "n" },
  { "<leader>nt",       ":Telescope colorscheme<CR>",                                   desc = "Themes",                                 mode = "n" },
  -- Mason
  { "<leader>M",        ":Mason<CR>",                                                   desc = "Mason",                                  mode = "n" },
  -- LazyGit
  { "<leader>G",        ":LazyGit<CR>",                                                 desc = "Lazy Git" },
  -- LSP
  { "K",                vim.lsp.buf.hover,                                              desc = "LSP help" },
  { "<F2>",             vim.lsp.buf.rename,                                             desc = "LSP rename" },
  { "gD",               vim.lsp.buf.declaration,                                        desc = "LSP goto declaration" },
  { "gd",               vim.lsp.buf.definition,                                         desc = "LSP goto definition" },
  { "gr",               vim.lsp.buf.references,                                         desc = "LSP references" },
  { "ca",               vim.lsp.buf.code_action,                                        desc = "LSP code action" },
  { "<leader>fm",       vim.lsp.buf.format,                                             desc = "LSP format file" },
  { "go",               ":ClangdSwitchSourceHeader<CR>",                                desc = "Clangd switch between source and header" },
  -- Essentials
  { "<C-s>",            ":write<CR>",                                                   desc = "Save current buffer",                    mode = "n" },
  { "<C-x>",            ":exit<CR>",                                                    desc = "Exit",                                   mode = "n" },
  { "<leader>s",        ":source %<CR>",                                                desc = "Source current file",                    mode = "n" },
  { "<C-k>",            ":wincmd k<CR>",                                                mode = "n" },
  { "<C-j>",            ":wincmd j<CR>",                                                mode = "n" },
  { "<C-h>",            ":wincmd h<CR>",                                                mode = "n" },
  { "<C-l>",            ":wincmd l<CR>",                                                mode = "n" },
  { "<leader>h",        ":split<CR>",                                                   desc = "Window horizontal split",                mode = "n" },
  { "<leader>v",        ":vsplit<CR>",                                                  desc = "Window vertical split",                  mode = "n" },
  { "<C-h>",            "<Left>",                                                       mode = "i" },
  { "<C-l>",            "<Right>",                                                      mode = "i" },
  { "<C-k>",            "<Up>",                                                         mode = "i" },
  { "<C-j>",            "<Down>",                                                       mode = "i" },
  { "<C-w>",            "<C-O>w",                                                       mode = "i" },
  { "<C-b>",            "<C-O>b",                                                       mode = "i" },
  { "\"",               "\"\"<C-G>U<Left>",                                             mode = "i" },
  { "'",                "''<C-G>U<Left>",                                               mode = "i" },
  { "<leader>/",        ":nohlsearch<CR>",                                              mode = "n",                                      hidden = true },
  { "<leader>nc",       ":checkhealth<CR>",                                             desc = "Check health",                           mode = "n" },
  { ";",                ":",                                                            desc = "CMD enter command mode",                 mode = "n" },
  { "<leader><Enter>",  ":terminal<cr>",                                                desc = "Open terminal in a new buffer",          mode = "n" },
  { "<ESC>",            [[<C-\><C-n>]],                                                 desc = "Exit from terminal mode",                mode = "t" },
  { "<C-d>",            [[<C-\><C-n>]],                                                 desc = "Exit from terminal mode",                mode = "t" },
  -- Tabs navigation
  { "<S-Tab>",          ":tabnew<CR>",                                                  desc = "Open new tab",                           mode = "n" },
  { "<S-Tab>n",         ":tabnext<CR>",                                                 desc = "Open next tab",                          mode = "n" },
  { "<S-Tab>p",         ":tabprevious<CR>",                                             desc = "Open previous tab",                      mode = "n" },
  { "<leader>d",        ":close<CR>",                                                   desc = "Close",                                  mode = "n" },
})
