require("nvim-tree").setup({
  sort_by = "case_sensitive",
  auto_close = true,
  diagnostics = {
      enable = true
  },
  filters = {
    dotfiles = true,
  }
})

vim.api.nvim_set_keymap('n', '<Space>w', ':NvimTreeToggle<CR>', {desc = 'Toggle file explorer'})
vim.api.nvim_set_keymap('n', '<Space>e', ':NvimTreeFocus<CR>', {desc = 'Focus file explorer'})

