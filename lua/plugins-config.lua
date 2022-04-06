require('lualine').setup({
  options = { theme  = 'dracula' },
})

require("better_escape").setup {
    mapping = {"jk", "jj"}, -- a table with mappings to use
--  timeout = vim.o.timeoutlen, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
    timeout = 100, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
    clear_empty_lines = false, -- clear line after escaping if there is only whitespace
    keys = "<Esc>", -- keys used for escaping, if it is a function will use the result everytime
    -- example(recommended)
    -- keys = function()
    --   return vim.api.nvim_win_get_cursor(0)[2] > 1 and '<esc>l' or '<esc>'
    -- end,
}

local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion

null_ls.setup({
    sources = {
        formatting.stylua,
        formatting.autopep8,
        formatting.clang_format.with({
          extra_args = {
            "--style=Google",
          }
        }),
        diagnostics.eslint,
        diagnostics.flake8,
        diagnostics.cppcheck,
        completion.spell,
    },
    debug = true,
})
