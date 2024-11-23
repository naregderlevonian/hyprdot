return {
    {
        'neovim/nvim-lspconfig',
        config = function()
            require('lspconfig').rust_analyzer.setup {}
        end,
    },
    {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('nvim-treesitter.configs').setup {
                highlight = { enable = true },
                indent = { enable = true },
            }
        end,
    },
    {
        'hrsh7th/nvim-cmp',
        config = function()
            require('cmp').setup()
        end,
    },
    {
        'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
        config = function()
            require("lsp_lines").setup()
        end,
    },
    {
        'chentoast/marks.nvim',
    },
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            require("ibl").setup({
                indent = { char = '┊'},
            })
        end,
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true,
    },
    {
        'rafamadriz/friendly-snippets'
    },
    {
        'stevearc/conform.nvim',
        opts = {},
        config = function()
            require('conform').setup({
                formatters_by_ft = {
                    lua = {
                        'stylua',
                    },
                    javascript = {
                        'prettierd',
                        'prettier',
                        stop_after_first = true,
                    },
                    rust = {
                        'rustfmt',
                        lsp_format = 'fallback',
                    },
                },
                format_on_save = true,
            })
        end,
    },
    {
        'simrat39/rust-tools.nvim',
    },
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
        'echasnovski/mini.nvim',
        version = '*',
        config = function()
            require('mini.align').setup()
        end
    },
}
