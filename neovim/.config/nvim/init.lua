require("plugins")
require("niko.keymap")
require("niko.buffers")
require("niko.plugins.telescope")
require("niko.plugins.lualine")
require("niko.plugins.nvimtree")
require("niko.lsp")

local set = vim.opt
set.tabstop = 4
set.softtabstop = 4
set.expandtab = true
set.shiftwidth = 4
set.smarttab = true
set.laststatus = 2
set.number = true
set.relativenumber = true

vim.g.terraform_align = 1
vim.g.terraform_fmt_on_save = 1
vim.g.rustfmt_autosave = 1

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

