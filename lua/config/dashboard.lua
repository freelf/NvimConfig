local status, db = pcall(require, "dashboard")
if not status then
  vim.notify("没有找到 dashboard")
  return
end


db.setup({
    theme = 'Hyper',
    -- config = {
    --     footer = {
    --         "",
    --         "",
    --         "https://blog.freelf.me",
    --     },
        
    --     center = {
    --         {
    --           icon = "  ",
    --           desc = "Projects",
    --           action = "Telescope projects",
    --         },
    --         {
    --           icon = "  ",
    --           desc = "Recently files",
    --           action = "Telescope oldfiles",
    --         },
    --         {
    --           icon = "  ",
    --           desc = "Edit keymaps",
    --           action = "edit ~/.config/nvim/lua/keymaps.lua",
    --         },
    --         {
    --           icon = "  ",
    --           desc = "Edit Projects                       ",
    --           action = "edit ~/.local/share/nvim/project_nvim/project_history",
    --         },
    --     },
        
    --     header = {
    --        [[ ███████████████████████████ ]],
    --        [[ ███████▀▀▀░░░░░░░▀▀▀███████ ]],
    --        [[ ████▀░░░░░░░░░░░░░░░░░▀████ ]],
    --        [[ ███│░░░░░░░░░░░░░░░░░░░│███ ]],
    --        [[ ██▌│░░░░░░░░░░░░░░░░░░░│▐██ ]],
    --        [[ ██░└┐░░░░░░░░░░░░░░░░░┌┘░██ ]],
    --        [[ ██░░└┐░░░░░░░░░░░░░░░┌┘░░██ ]],
    --        [[ ██░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░██ ]],
    --        [[ ██▌░│██████▌░░░▐██████│░▐██ ]],
    --        [[ ███░│▐███▀▀░░▄░░▀▀███▌│░███ ]],
    --        [[ ██▀─┘░░░░░░░▐█▌░░░░░░░└─▀██ ]],
    --        [[ ██▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄██ ]],
    --        [[ ████▄─┘██▌░░░░░░░▐██└─▄████ ]],
    --        [[ █████░░▐█─┬┬┬┬┬┬┬─█▌░░█████ ]],
    --        [[ ████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐████ ]],
    --        [[ █████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████ ]],
    --        [[ ███████▄░░░░░░░░░░░▄███████ ]],
    --        [[ ██████████▄▄▄▄▄▄▄██████████ ]],
    --     }
    -- }
    config = {
        week_header = {
         enable = true,
        },
        shortcut = {
          { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
          {
            icon = ' ',
            icon_hl = '@variable',
            desc = 'Files',
            group = 'Label',
            action = 'Telescope find_files',
            key = 'f',
          },
          {
            desc = ' Apps',
            group = 'DiagnosticHint',
            action = 'Telescope app',
            key = 'a',
          },
          {
            desc = ' dotfiles',
            group = 'Number',
            action = 'Telescope dotfiles',
            key = 'd',
          },
        },
      },
})