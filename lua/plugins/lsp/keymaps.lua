local M = {}

function M.setup(bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }
    local telescope_builtin = require("telescope.builtin")
    -- 键位映射
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', telescope_builtin.lsp_definitions, opts)
    vim.keymap.set('n', 'gh', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', telescope_builtin.lsp_implementations, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "gp", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
    vim.keymap.set("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
    vim.keymap.set("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
    vim.keymap.set('n', 'gr', function()
        telescope_builtin.lsp_references(require("telescope.themes").get_ivy())
    end, opts)
    vim.keymap.set('n', '<leader>f', function()
        vim.lsp.buf.format { async = true }
    end, opts)
end

return M
