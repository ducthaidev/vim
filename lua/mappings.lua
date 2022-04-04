-----------------
-- key mapping --
-----------------

local utils = require('utils')

-- noremap, silent option
local ns_opts = { noremap=true, silent=true }

-----------------
-- normal mode --
-----------------

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
-- delete to 


-----------------
-- insert mode --
-----------------

-- jk to 
utils.map('i', 'jk', '<Esc>', ns_opts)

-----------------
-- visual mode --
-----------------

utils.map('v', 'F', '<leader><leader>F', {})
utils.map('v', 'f', '<leader><leader>f', {})
