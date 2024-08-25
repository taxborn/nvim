-- leader key (space)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opt = vim.opt

-- opt.inccomand = "split"

opt.smartcase = true
opt.ignorecase = true

opt.number = true
opt.relativenumber = true

opt.expandtab = false
opt.tabstop = 4
opt.shiftwidth = 4

opt.splitbelow = true
opt.splitright = true

opt.clipboard = "unnamedplus"

opt.wrap = true
opt.linebreak = true
