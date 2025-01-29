require("lazy").setup({

    -- Opening screen
    {
        "goolord/alpha-nvim",
        dependencies = {"nvim-tree/nvim-web-devicons",},
        config = function ()
            require('plugs.alpha').setup()
        end,
    },

    -- ui
    { "nvim-lualine/lualine.nvim" },

    -- auto save plugin
    --{'Pocco81/auto-save.nvim'},


    -- transparent background plugin
    {
        "xiyaowong/transparent.nvim",
        config = function()
            require("transparent").setup({ enable = true })
        end,
    },

    -- nerd tree plugin
    {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    }
    },

    {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    },

    -- Fuzzy Finder
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    {
        'nvim-telescope/telescope-project.nvim',
        dependencies = {
            'nvim-telescope/telescope.nvim',
    },
    },

    -- Syntax Highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },

    -- Autocompletion & Snippets
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "saadparwaiz1/cmp_luasnip" },
    { "rafamadriz/friendly-snippets" },
    { "onsails/lspkind-nvim" },
    {
        "L3MON4D3/LuaSnip",
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end,
    },

    -- LSP and Mason
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason").setup()
        end,
    },

    -- Themes
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                variant = "moon",
                disable_background = false,
            })
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            require("catppuccin").setup({
                transparent_background = true,
            })
        end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        config = function()
            require("gruvbox").setup({
                contrast = "", -- can be "hard", "soft" or empty string
                transparent_mode = false,
            })
        end,
    },
})
