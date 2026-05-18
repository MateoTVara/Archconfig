vim.o.autoindent = true
vim.o.smartindent = true

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.smarttab = true
vim.o.expandtab = true

vim.o.number = true

-- Allow cursor to cross line boundaries with arrow keys in insert mode
vim.opt.whichwrap:append("<,>,[,]")

require("config.lazy")
