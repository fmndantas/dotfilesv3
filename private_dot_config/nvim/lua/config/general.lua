vim.g.mapleader = " "

-- habilita cópia do clipboard usado pelo sistema operacional
vim.opt.clipboard="unnamedplus"

-- habilita números na sidebar
vim.opt.number=true
vim.opt.relativenumber=true

-- tab
vim.opt.tabstop = 2        -- Number of visual spaces per TAB
vim.opt.softtabstop = 2    -- Number of spaces that a <Tab> counts for while editing
vim.opt.shiftwidth = 2      -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true  

vim.cmd[[colorscheme monokai_pro]]
