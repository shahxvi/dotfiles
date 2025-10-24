-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Line Numbers --
vim.opt.relativenumber = true
vim.opt.number = true -- Show actual line number on highlight

-- Tabs --
vim.opt.expandtab = true -- Convert spaces to tabs
vim.opt.tabstop = 8 -- Number of spaces that a tab character represents
vim.opt.shiftwidth = 8 -- Number of spaces to use for each indentation
vim.opt.softtabstop = 8 -- Number of spaces a tab keypress uses for indenting

-- Indents --
vim.opt.autoindent = true
vim.opt.smartindent = true
