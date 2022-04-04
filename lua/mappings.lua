-----------------
-- key mapping --
-----------------

local utils = require('utils')

-- noremap, silent option
local ns_opts = { noremap=true, silent=true }

-----------------
-- normal mode --
-----------------

-- NERDTree open
utils.map('n', '<C-n>', ':NERDTree<CR>', ns_opts)
-- NERDTree toggle
utils.map('n', '<C-t>', ':NERDTreeToggle<CR>', ns_opts)

-----------------
-- insert mode --
-----------------

-- jk to 
utils.map('i', 'jk', '<Esc>', ns_opts)

-----------------
-- visual mode --
-----------------


