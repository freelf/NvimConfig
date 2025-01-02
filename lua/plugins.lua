local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	"neovim/nvim-lspconfig",
	'arkav/lualine-lsp-progress',
	"LinArcX/telescope-env.nvim",
	"ahmedkhalf/project.nvim",
	{
		"nvim-treesitter/nvim-treesitter", 
		build = ":TSUpdate"
	},
	-- dashboard
	{
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		dependencies = { {'nvim-tree/nvim-web-devicons'}}
	},
	-- telescope
    {
		'nvim-telescope/telescope.nvim',
		  dependencies = { 'nvim-lua/plenary.nvim' }
	},
	-- lualine
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	-- bufferline
	{
		'akinsho/bufferline.nvim',
		version = "*", 
		dependencies = {
			'nvim-tree/nvim-web-devicons',
			"moll/vim-bbye"
		}
	},
	-- nvim-tree
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
		  "nvim-tree/nvim-web-devicons",
		}
	},
	-- auto pair
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
	-- color scheme
    "tanvirtin/monokai.nvim",
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	}
})