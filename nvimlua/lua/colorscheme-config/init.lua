if vim.fn.has('termguicolors') then
    vim.opt.termguicolors = true
end

vim.cmd[[colorscheme everforest]]
vim.g.everforest_better_performance = 1
vim.g.everforest_enable_italic = 1
vim.g.everforest_transparent_background = 2
vim.g.everforest_current_word = 'underline'


require("transparent").setup({
 enable = true
})

