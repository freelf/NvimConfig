local function setup_colorscheme()
    -- 设置主题选项
    local theme_ok, theme = pcall(require, "tokyonight")
    if theme_ok then
        theme.setup({
            style = "storm", -- storm, moon, night, day
            transparent = false,
            terminal_colors = true,
            styles = {
                comments = { italic = true },
                keywords = { italic = true },
                functions = {},
                variables = {},
            },
        })
    end

    -- 安全地设置配色方案
    local status_ok, _ = pcall(vim.cmd, "colorscheme tokyonight")
    if not status_ok then
        vim.notify("colorscheme tokyonight not found!", vim.log.levels.WARN)
        -- 尝试设置备用主题
        pcall(vim.cmd, "colorscheme default")
    end
end

return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        -- 安全地执行配置函数
      local status_ok, _ = pcall(setup_colorscheme)
      if not status_ok then
        vim.notify("Failed to setup colorscheme", vim.log.levels.ERROR)
      end
    end
}
