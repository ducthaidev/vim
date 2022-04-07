-----------------
-- key mapping --
-----------------

local utils = require('utils')

-- noremap, silent option
local ns_opts = { noremap=true, silent=true }

-----------------
-- normal mode --
-----------------

-- turn off highlight
utils.map('n', '<Esc>', ':noh<CR><Esc>', ns_opts)

-- show and select buffer
utils.map('n', '<Leader>l', ':ls<CR>:b ', ns_opts)

-- NERDTree toggle
utils.map('n', '<C-t>', ':NERDTreeToggle<CR>', ns_opts)

-- move between window
utils.map('n', '<left>', ':wincmd h<CR>', ns_opts)
utils.map('n', '<down>', ':wincmd j<CR>', ns_opts)
utils.map('n', '<up>', ':wincmd k<CR>', ns_opts)
utils.map('n', '<right>', ':wincmd l<CR>', ns_opts)

-- easymotion
utils.map('n', 'F', '<leader><leader>F', {})
utils.map('n', 'f', '<leader><leader>f', {})

-- open terminal
utils.map('n', '<Leader>t', ':FloatermToggle --height=0.6 --width=0.4<CR>', ns_opts)
utils.map('t', '<Esc>', '<C-\\><C-n>:FloatermToggle<CR>', ns_opts)

-- telescope
utils.map('n', '<Leader>ff', '<cmd>Telescope find_files<cr>', ns_opts)
utils.map('n', '<Leader>fg', '<cmd>Telescope live_grep<cr>', ns_opts)
utils.map('n', '<Leader>fb', '<cmd>Telescope buffers<cr>', ns_opts)
utils.map('n', '<Leader>fh', '<cmd>Telescope help_tags<cr>', ns_opts)

-- delete to hole register


-----------------
-- insert mode --
-----------------

-- jk to ESC
utils.map('i', 'jk', '<Esc>', ns_opts)

-----------------
-- visual mode --
-----------------

utils.map('v', 'F', '<leader><leader>F', {})
utils.map('v', 'f', '<leader><leader>f', {})
