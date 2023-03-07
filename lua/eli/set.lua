vim.g.mapleader = " "

local cursor =  "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,"
cursor = cursor.. "a:blinkwait700-blinkoff400-blinkon250-Cursor,"
cursor = cursor.. "sm:block-blinkwait175-blinkoff150-blinkon175"

vim.opt.guicursor = cursor

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.colorcolumn = "80"
