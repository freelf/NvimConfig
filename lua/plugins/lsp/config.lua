local M = {}
M.tools = {
    ensure_installed = {
        -- LSP
        "lua_ls", 
        "clangd", 
        "cmake", 
        "jsonls",

        -- Formatter
        "stylua", 
        "prettier", 
        "clang-format"
    }
}
return M