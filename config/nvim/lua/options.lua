-- Line Numbers
vim.opt.number  = true
vim.opt.relativenumber = true

-- Tabs
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Search
vim.opt.hlsearch = false
vim.opt.ignorecase = true

-- Highlight current cursor
vim.opt.cursorline = true

-- Terminal True Colors
vim.opt.termguicolors = true

-- Force splits in sensible positions
vim.opt.smartindent = true
vim.opt.splitbelow = true

-- Start scrolling when there's 8 lines left
vim.opt.scrolloff = 8

-- Don't Wrap text
vim.opt.wrap = false

-- File encoding
vim.opt.fileencoding = "utf-8"


-- Misc
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.fillchars = {eob = " "}
