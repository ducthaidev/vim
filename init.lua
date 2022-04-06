local home_dir = os.getenv("HOME")
package.path = home_dir .. "/.config/nvim/lua/?.lua;" .. package.path

require('plugins')
require('settings')
require('mappings')
require('lsp-config')
require('nvim-cmp')
require('plugins-config')
