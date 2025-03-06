vim.g.mapleader = " "

-- habilita cópia do clipboard usado pelo sistema operacional
vim.opt.clipboard="unnamedplus"

-- habilita números na sidebar
vim.opt.number=true
vim.opt.relativenumber=true

-- tab
vim.opt.tabstop = 4        -- Number of visual spaces per TAB
vim.opt.softtabstop = 4    -- Number of spaces that a <Tab> counts for while editing
vim.opt.shiftwidth = 4      -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true  

-- pesquisa
vim.opt.incsearch=true
vim.opt.ignorecase=true
vim.opt.smartcase=true

-- tema
vim.cmd[[colorscheme monokai-pro-octagon]]

-- line highlighting
vim.o.cursorline = true

-- folding
vim.opt.foldmethod='indent'
