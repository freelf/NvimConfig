return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    "LinArcX/telescope-env.nvim"
  },
  opts = {
    defaults = {
      -- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
      initial_mode = "insert",
      -- 窗口内快捷键
      mappings = require("config.keymaps").telescopeList,
    },
    pickers = {
      -- 内置 pickers 配置
      find_files = {
        -- 查找文件换皮肤，支持的参数有： dropdown, cursor, ivy
        -- theme = "dropdown",
      }
    }
  },
  config = function(_, opts)
    -- 首先设置基本配置
    require('telescope').setup(opts)
    -- 然后加载扩展
    require('telescope').load_extension('env')
  end
}
