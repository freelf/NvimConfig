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
        },
        config = function(_, opts)
            -- nvm 懒加载导致 Mason 找不到 npm，手动将 node 路径加入 PATH
            local nvm_dir = vim.env.NVM_DIR or (vim.env.HOME .. "/.nvm")
            local nvm_default = nvm_dir .. "/alias/default"
            local handle = io.open(nvm_default, "r")
            if handle then
                local version = handle:read("*l")
                handle:close()
                if version then
                    local node_bin = nvm_dir .. "/versions/node/v" .. version:gsub("^v", "") .. "/bin"
                    if vim.fn.isdirectory(node_bin) == 1 then
                        vim.env.PATH = node_bin .. ":" .. vim.env.PATH
                    end
                end
            end
            require("mason").setup(opts)
        end
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
