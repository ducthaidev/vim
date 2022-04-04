return require("packer").startup(
    function()
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        use {
            'max397574/better-escape.nvim',
            config = function()
                require("better_escape").setup {
                    mapping = {'jk', 'jj'},
                    -- default: timeout = vim.o.timeoutlen,
                    timeout = 1,
                    clear_empty_lines = false,
                    keys = "<Esc>"
                }
            end
        } 
        
        use {
            'preservim/nerdtree',
            'tpope/vim-surround',
            'easymotion/vim-easymotion',
            'junegunn/fzf',
            'voldikss/vim-floaterm',
            {
                'nvim-telescope/telescope.nvim',
                requires = {{'nvim-lua/plenary.nvim'}}
            },
            {
                'nvim-treesitter/nvim-treesitter',
                run = ":TSUpdate"
            },
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'neovim/nvim-lspconfig', -- Collection of configurations for built-in LSP client
            'hrsh7th/nvim-cmp', -- Autocompletion plugin
            'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
            'saadparwaiz1/cmp_luasnip', -- Snippets source for nvim-cmp
            'L3MON4D3/LuaSnip',
        }
    end
)
