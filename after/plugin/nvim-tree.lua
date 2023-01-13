vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  auto_reload_on_write = true,
  disable_netrw = true,
  view = {
    adaptive_size = false,
    cursorline = true,
    preserve_window_proportions = true,
  },
  renderer = {
    add_trailing = true,
    group_empty = false,
  },
  filters = {
    dotfiles = true,
  },
  actions = {
    open_file = {
      quit_on_open = true,
    }
  }
})
