return {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        local null_ls = require("null-ls")
        local formatting = null_ls.builtins.formatting
        null_ls.setup({
            debug = false,
            sources = {
                -- Formatting ---------------------
                --  brew install shfmt
                formatting.shfmt,
                -- StyLua
                formatting.stylua,
                -- frontend
                formatting.prettier.with({ -- 只比默认配置少了 markdown
                    filetypes = {
                        "javascript",
                        "javascriptreact",
                        "typescript",
                        "typescriptreact",
                        "vue",
                        "css",
                        "scss",
                        "less",
                        "html",
                        "json",
                        "yaml",
                        "graphql",
                    },
                    prefer_local = "node_modules/.bin",
                }),
                -- formatting.fixjson,
                -- formatting.black.with({ extra_args = { "--fast" } }),
            },
            -- 保存自动格式化
            on_attach = function(client)
                -- if client.resolved_capabilities.document_formatting then
                --     vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
                -- end
            end,
        })
    end
}
