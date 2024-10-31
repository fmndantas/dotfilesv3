local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- navegação entre panels
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)

-- divisão dos panels
map('n', '|', '<C-w>v', opts)
map('n', '_', '<C-w>s', opts)

-- esc como jj
map('i', 'jj', '<esc>', opts)

-- nvim-tree
map('n', '<Leader>e', ':NvimTreeToggle<CR>', opts)

-- telescope
map('n', '<Leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<Leader>fh', ':Telescope command_history<CR>', opts)
map('n', '<Leader>/', ':Telescope live_grep<CR>', opts)
map('n', '<Leader>fb', ':Telescope buffers<CR>', opts)

-- lsp
map('n', '<Leader>lf', ':lua vim.lsp.buf.format()<CR>', opts)

-- tabs
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
