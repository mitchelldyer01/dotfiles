local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
   'bashls',
   'cssls',
   'dockerls',
   'gopls',
   'html',
   'jsonls',
   'marksman',
   'terraformls',
   'yamlls',
   'tsserver',
   'eslint',
   'rust_analyzer',
})

lsp.setup()

vim.diagnostic.config({
  virtual_text = false
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
