local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local builtin = require('telescope.builtin')

-- navegação entre panels
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)

-- divisão dos panels
map('n', '|', '<C-w>v', { desc = 'Split horizontally', unpack(opts) })
map('n', '_', '<C-w>s', { desc = 'Split vertically', unpack(opts) })

-- esc como jj
map('i', 'jj', '<esc>', { desc = 'Easy exit', unpack(opts) })

-- nvim-tree
map('n', '<Leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle tree', unpack(opts) })

-- telescope
map('n', '<Leader>ff', ':Telescope find_files<CR>', { desc = 'Find files', unpack(opts) })
map('n', '<Leader>fh', ':Telescope command_history<CR>', { desc = 'Search command history', unpack(opts) })
map('n', '<Leader>/', ':Telescope live_grep<CR>', { desc = 'GREP!', unpack(opts) })
map('n', '<Leader>fb', ':Telescope buffers<CR>', { desc = 'Find buffers', unpack(opts) })

-- lsp
map('n', '<Leader>lf', vim.lsp.buf.format, { desc = 'Format file' })
map('n', 'K', vim.lsp.buf.hover, { desc = 'Hover' })
map('n', '<Leader>lr', vim.lsp.buf.rename, { desc = 'Rename' })
map('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
map('n', '<Leader>la', vim.lsp.buf.code_action, { desc = 'Code actions' })
map('n', '<Leader>ls', builtin.lsp_document_symbols, { desc = 'Code symbols' })

-- tabs
map('n', '{', '<Cmd>BufferPrevious<CR>', { desc = 'Prev buffer', unpack(opts) })
map('n', '}', '<Cmd>BufferNext<CR>', { desc = 'Next buffer', unpack(opts) })
map('n', '<Leader>bp', '<Cmd>BufferPick<CR>', { desc = 'Pick buffer', unpack(opts) } )
map('n', '<Leader>bc', '<Cmd>BufferClose<CR>', { desc = 'Close buffer', unpack(opts) } )

-- lazygit
map('n', '<leader>gg', '<Cmd>LazyGit<CR>', { desc = 'LazyGit', unpack(opts) })
