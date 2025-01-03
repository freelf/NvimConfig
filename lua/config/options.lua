local opt = vim.opt

opt.number = true -- show absolute number
opt.cursorline = true
opt.splitright = true -- open new horizontal splits right

-- Tab
opt.tabstop = 4 -- number of visual spaces per TAB
opt.softtabstop = 4 -- number of spacesin tab when editing
opt.shiftwidth = 4 -- insert 4 spaces on a tab
opt.expandtab = true -- tabs are spaces, mainly because of python
opt.autoindent = true

-- search
vim.o.incsearch = true

opt.clipboard:append('unnamedplus')
opt.mouse = "a"

-- 自动补全不自动选中
opt.completeopt = "menu,menuone,noselect,noinsert"
-- 补全最多显示10行
opt.pumheight = 10

-- 不可见字符的显示，这里只把空格显示为一个点
opt.list = true
opt.listchars = "space:·"

-- 永远显示 tabline
opt.showtabline = 2
-- 使用增强状态栏插件后不再需要 vim 的模式提示
opt.showmode = false