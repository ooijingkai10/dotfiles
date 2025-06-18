-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap Ctrl+h to left
vim.api.nvim_set_keymap("i", "<C-h>", "<Left>", { noremap = true, silent = true })
-- Remap Ctrl+j to down
vim.api.nvim_set_keymap("i", "<C-j>", "<Down>", { noremap = true, silent = true })
-- Remap Ctrl+k to up
vim.api.nvim_set_keymap("i", "<C-k>", "<Up>", { noremap = true, silent = true })
-- Remap Ctrl+l to right
vim.api.nvim_set_keymap("i", "<C-l>", "<Right>", { noremap = true, silent = true })
