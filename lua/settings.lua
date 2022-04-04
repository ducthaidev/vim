-------------------
-- global config --
-------------------

vim.g.mapleader = ' '

local set = vim.opt
set.number = true
set.autoindent = true
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true

vim.api.nvim_command([[
    autocmd VimEnter * NERDTree
]])