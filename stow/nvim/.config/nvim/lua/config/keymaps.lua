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

-- keymap for delete markings
vim.api.nvim_set_keymap("n", "<C-m>", ":delmarks A-Za-z<CR>", { noremap = true, silent = true, desc = "delete marks" })
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true, desc = "delete marks" })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true, desc = "delete marks" })

-- keymap for switching window
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", {})
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", {})
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", {})
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", {})
vim.keymap.set({ 'n', 'i' }, "<C-s>", "<esc>:w<cr>", {})

-- keymap for opening and closing neotree
vim.keymap.set({ 'n' }, "<leader>e", ":Neotree toggle<cr>", { silent = true })

-- keymap for vim-fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
