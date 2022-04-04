return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        "max397574/better-escape.nvim",
        config = function()
            require("better_escape").setup {
                mapping = {"jk", "jj"},
                -- default: timeout = vim.o.timeoutlen,
                timeout = 1,
                clear_empty_lines = false,
                keys = "<Esc>"
            }
        end
    }

    use {
        'preservim/nerdtree',
    }

    use {
        'tpope/vim-surround'
    }

    use {
        'easymotion/vim-easymotion'
    }

    use {
        'junegunn/fzf'
    }

end)
