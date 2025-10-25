-- Variables --
local tabsToSpaces = true
local tabSize = 8

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Line Numbers --
vim.opt.relativenumber = true
vim.opt.number = true -- Show actual line number on highlight

-- Tabs --
vim.opt.expandtab = tabsToSpaces -- Convert spaces to tabs
vim.opt.tabstop = tabSize -- Number of spaces that a tab character represents
vim.opt.shiftwidth = tabSize -- Number of spaces to use for each indentation
vim.opt.softtabstop = tabSize -- Number of spaces a tab keypress uses for indenting

-- Indents --
vim.opt.autoindent = true
vim.opt.smartindent = true
