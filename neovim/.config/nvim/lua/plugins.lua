
require("packer").startup(function(use)
    use("wbthomason/packer.nvim")
    use("vijaymarupudi/nvim-fzf")
    use("tpope/vim-fugitive")
    use("tpope/vim-rhubarb")
    use("tpope/vim-sensible")
    use("google/vim-jsonnet")
    use("hashivim/vim-terraform")
    use("dag/vim-fish")
    use("neovim/nvim-lspconfig")
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")
    use("rust-lang/rust.vim")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/nvim-cmp")
    use("ellisonleao/gruvbox.nvim")
    use("nvim-treesitter/nvim-treesitter")
    use("nvim-tree/nvim-web-devicons")
    use("romgrk/barbar.nvim")
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
      }
    }
end)
