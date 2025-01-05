local common = require("plugins.lsp.config")
common.capabilities.offsetEncoding = "utf-8"

local opt = {
    capabilities = common.capabilities,
    cmd = {
        "clangd", "--background-index", "--pch-storage=memory", "--clang-tidy",
        "--completion-style=detailed"
    },
    init_options = {
        clangdFileStatus = true,
        usePlaceholders = true,
        completeUnimported = true,
        semanticHighlighting = true
    },
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" }
}

return opt
