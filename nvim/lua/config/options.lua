-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- vim.opt.clipboard = "unnamedplus"
-- vim.g.snacks_animate = false
-- vim.g.autoformat = false
-- vim.api.nvim_set_hl(0, "Normal", { fg = "#000000", default = true })

-- enable line numbers and relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

local spaces = 2
vim.opt.expandtab = true     -- expand tabs new to spaces (retab if needed)
vim.opt.tabstop = spaces     -- how many space = 1 tab
vim.opt.softtabstop = spaces -- break tabstop down further

vim.opt.autoindent = true    -- auto indent next line when using o/O or enter
vim.opt.shiftwidth = spaces  -- no of spaces for auto indent next line
vim.opt.clipboard = "unnamedplus"
