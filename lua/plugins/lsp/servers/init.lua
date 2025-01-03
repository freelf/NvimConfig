local M = {}

function M.setup(handlers)
    local servers = {
        lua_ls = require("plugins.lsp.servers.lua")
    }

    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")
    mason_lspconfig.setup_handlers({
        function(server_name)
            local opts = {
                capabilities = handlers.capabilities,
                on_attach = handlers.on_attach,
            }

            -- 合并特定服务器的配置
            if servers[server_name] then
                opts = vim.tbl_deep_extend("force", opts, servers[server_name])
            end
            lspconfig[server_name].setup(opts)

        end
    })
end

return M
