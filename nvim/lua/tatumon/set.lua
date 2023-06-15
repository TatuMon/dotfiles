vim.g.mapleader = " "

-- WINDOWS
local vim_tmp_dir = os.getenv("HOMEDRIVE") .. os.getenv("HOMEPATH") .. "/.vim"
-- LINUX
-- local vim_tmp_dir = os.getenv("HOME") .. "/.vim"

--  vim.api.nvim_set_hl(0, "Normal", { guibg=NONE, ctermbg=NONE })

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = true
vim.opt.backupdir = vim_tmp_dir .. "/backupdir"
vim.opt.undodir = vim_tmp_dir .. "/undodir"

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
