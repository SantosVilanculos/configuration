-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.lazyvim_cmp = "blink.cmp"
vim.g.lazyvim_picker = "telescope"
vim.g.lazyvim_php_lsp = "intelephense"
vim.g.lazyvim_python_lsp = "pyright"

-- vim.o.winbar = "%=%m %f"
-- vim.o.winbar = "%=%m %t"
vim.o.relativenumber = false
-- vim.o.wrap = true

vim.o.backup = false
vim.o.writebackup = false
vim.o.undofile = true
vim.o.swapfile = false
-- vim.o.backupdir = '/tmp/'
vim.o.undodir = "/tmp/"
-- vim.o.directory = "/tmp/"
