return {
    {
        "williamboman/mason.nvim",
        opts = {
            ui = {
                border = "rounded",
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        }
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            automatic_installation = true,
        },
    },
    -- mason-tool-installer
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        lazy = false,
        dependencies = {
            "williamboman/mason.nvim",
        },
        opts = require("plugins.lsp.config").tools,
    },
    -- lspconfig
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "mason.nvim",
            "mason-lspconfig.nvim",
            "mason-tool-installer.nvim",
        },
        config = function(_, _)
            require("plugins.lsp.ui")
            require("plugins.lsp.handlers").setup()
        end
    },
}
