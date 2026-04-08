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
vim.opt.scrolloff = 8

vim.opt.autoindent = true   -- auto indent next line when using o/O or enter
vim.opt.shiftwidth = spaces -- no of spaces for auto indent next line
vim.opt.clipboard = "unnamedplus"

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- linewrap and break lines by words
vim.opt.wrap = true
vim.opt.linebreak = true


-- disable swap files backups and enable undo file for undotree plugin
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
