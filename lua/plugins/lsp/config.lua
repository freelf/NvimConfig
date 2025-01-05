local M = {}
M.tools = {
    ensure_installed = {
        -- LSP
        "lua_ls", "clangd", "cmake", "jsonls",
        -- Formatter
        "stylua", "prettier", "clang-format"
    }
}

M.capabilities = require("cmp_nvim_lsp").default_capabilities()
M.capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

M.flags = {debounce_text_changes = 150}

return M
