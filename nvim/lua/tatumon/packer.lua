-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- TELESCOPE
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- TELESCOPE PROJECT
    use 'nvim-telescope/telescope-project.nvim'

    -- TELESCOPE FILE BROWSER
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }

    -- THEMES
    -- -- ONE DARK PRO
    use 'olimorris/onedarkpro.nvim'
    -- -- TOKYO NIGHT
    use 'folke/tokyonight.nvim'

    -- TREESITTER
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')

    -- HARPOON by theprimeagen
    use('theprimeagen/harpoon')

    -- UNDOTREE
    use('mbbill/undotree')

    -- FUGITIVE
    use('tpope/vim-fugitive')

    -- LSP-ZERO
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    -- TMUX
    use({
        "aserowy/tmux.nvim",
        config = function() return require("tmux").setup() end
    })

    -- TOGGLETERM
    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    -- BARBAR (tabline)
    use 'nvim-tree/nvim-web-devicons'
    use { 'romgrk/barbar.nvim', requires = 'nvim-web-devicons' }

    -- NERDTREE
    -- use 'preservim/nerdtree'
    -- use 'ryanoasis/vim-devicons'
    -- use 'Xuyuanp/nerdtree-git-plugin'

    -- NVIM TREE
    use 'nvim-tree/nvim-tree.lua'

    -- GITGUTTER
    use 'airblade/vim-gitgutter'

    -- RIPGREP
    use 'BurntSushi/ripgrep'

    -- STARTUP
    use {
        "startup-nvim/startup.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        config = function()
            require "startup".setup()
        end
    }

    -- COMMENT
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- CONTEXT COMMENTS
    use 'JoosepAlviste/nvim-ts-context-commentstring'

    -- LUALINE
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- PROJECT MANAGER
    use {
        "ahmedkhalf/project.nvim",
        config = function()
            require("project_nvim").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- DEAD COLUMN
    use 'Bekaboo/deadcolumn.nvim'

    -- TRANSPARENT
    use 'xiyaowong/transparent.nvim'

    -- TROUBLE
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- MINIMAP
    use 'wfxr/minimap.vim'

    -- RENAME HTML TAGS
    use 'AndrewRadev/tagalong.vim'

    -- AUTOCLOSE HTML TAGS
    use 'windwp/nvim-ts-autotag'

    -- GIT BLAME
    use 'f-person/git-blame.nvim'
end)
