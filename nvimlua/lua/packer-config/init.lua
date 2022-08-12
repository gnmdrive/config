return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'sainnhe/everforest'
    use 'xiyaowong/nvim-transparent'
    use 'kyazdani42/nvim-web-devicons'
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons',
      },
      tag = 'nightly'
    }
    use 'neovim/nvim-lspconfig'
end)

