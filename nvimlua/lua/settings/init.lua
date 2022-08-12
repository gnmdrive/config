local set = vim.opt

set.showmatch = true
set.mouse = 'a'
set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4
set.autoindent = true
set.wildmode = { 'longest', 'list' }
set.syntax = 'on'
set.clipboard = 'unnamedplus'

set.ttyfast = true
set.completeopt = { 'noinsert', 'menuone', 'noselect' }
set.title = true
set.ttimeoutlen = 0
set.wildmenu = true
set.guicursor = 'n-v-c-i-sm:block'

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 5
set.fileencoding = 'utf-8'
set.termguicolors = true

set.relativenumber = true
-- set.cursorline = true

set.hidden = true

vim.api.nvim_set_keymap('n', '<Control>d', ':noh', {desc = 'Reset searching highligthing'}) 

