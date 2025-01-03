local M = {}

function M.setup()
    local config = require("plugins.lsp.config")

    M.on_attach = function(client, bufnr)
        require("plugins.lsp.keymaps").setup(bufnr)
    end
    require("plugins.lsp.servers").setup(M)
end

return M