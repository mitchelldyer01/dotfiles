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
