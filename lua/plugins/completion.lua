return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        -- 补全源
        "hrsh7th/cmp-vsnip",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",

        -- snippet
        "hrsh7th/vim-vsnip",
        "rafamadriz/friendly-snippets"
    },
    config = function()
        local cmp = require("cmp")
        cmp.setup({
            snippet = {
                expand = function(args)
                    vim.fn["vsnip#anonymous"](args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "vsnip" },
            }, {
                { name = "buffer" },
                { name = "path" },
            }),
        })
        -- / 查找模式使用 buffer 源
        cmp.setup.cmdline("/", {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = "buffer" },
            },
        })

        -- : 命令行模式中使用 path 和 cmdline 源.
        cmp.setup.cmdline(":", {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
                { name = "path" },
            }, {
                { name = "cmdline" },
            }),
        })
    end

}
