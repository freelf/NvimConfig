-- nvim-tree 支持
vim.g.nvim_tree_respect_buf_cwd = 1

return {
  "ahmedkhalf/project.nvim",
  opts = {
    detection_methods = { "pattern" },
    patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", ".sln" },
  },
  config = function()
    local status, telescope = pcall(require, "telescope")
    if not status then
      vim.notify("没有找到 telescope")
      return
    end
    pcall(telescope.load_extension, "projects")
  end
}
