return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = {
			-- 缩进字符
			char = "│",
			-- 显示第一条缩进线
			smart_indent_cap = true,
		},
		scope = {
			show_start = true,
		},
		exclude = {
			filetypes = {
				"checkhealth",
				"man",
				"gitcommit",
				"null-ls-info",
				"dashboard",
				"packer",
				"terminal",
				"help",
				"log",
				"markdown",
				"TelescopePrompt",
				"TelescopeResults",
				"lsp-installer",
				"lspinfo",
				"toggleterm",
				"text",
				"''",
			},
		},
	},
}
