vim.g.coq_settings = {
  keymap = {
    recommended = false,
    jump_to_mark = '',
    pre_select = true,
  },
  auto_start = 'shut-up',
  display = {
    pum = {
      fast_close = false
    }
  },
  completion = {
    always = false,
  }
}

-- TODO: resolver auto-start
local lsp = require "lspconfig"
local coq = require "coq"
