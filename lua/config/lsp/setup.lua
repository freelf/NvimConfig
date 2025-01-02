local mason_status, mason = pcall(require, "mason")
if not mason_status then
    vim.notify("没有找到 mason")
    return
end

local nlsp_status, nvim_lsp = pcall(require, "lspconfig")
if not nlsp_status then
    vim.notify("没有找到 lspconfig")
    return
end

local mlsp_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mlsp_status then
    vim.notify("没有找到 mason-lspconfig")
    return
end

local mt_status, mason_tool = pcall(require, "mason-tool-installer")
if not mt_status then
    vim.notify("没有找到 mason-tool-installer")
    return
end

mason.setup({
    ui = {
        border = "rounded",
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

mason_lspconfig.setup({
    -- 确保安装，根据需要填写
    ensure_installed = {"lua_ls", "clangd", "cmake", "jsonls"}
})

mason_tool.setup({
    ensure_installed = {"stylua", "prettier", "clang-format", }
})

local servers = {
    lua_ls = require("config.lsp.config.lua")
}

for name, config in pairs(servers) do
    if config ~= nil and type(config) == "table" then
        config.on_setup(nvim_lsp[name])
    else
        nvim_lsp[name].setup({})
    end
end