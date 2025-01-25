-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-a>", "gg<S-v>G")

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })

vim.keymap.set("i", "<S-Tab>", "<C-d>", { noremap = true, silent = true, desc = "Make S-Tab move left" })

vim.keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true, desc = "Indent forward" })
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true, desc = "Indent backward" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv'", { noremap = true, silent = true, desc = "Move selection down a line" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv'", { noremap = true, silent = true, desc = "Move selection up a line" })

vim.keymap.set("i", "jk", "<ESC>")
