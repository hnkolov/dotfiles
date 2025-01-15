local capabilities = require('cmp_nvim_lsp').default_capabilities()
local on_attach = function(client, bufnr)
 vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
 local bufopts = { noremap=true, silent=true, buffer=bufnr }
 vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, vim.tbl_extend('force', bufopts, { desc = "Go to declaration" }))
 vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, vim.tbl_extend('force', bufopts, { desc = "Go to definition" }))
 vim.keymap.set('n', '<leader>gt', vim.lsp.buf.type_definition, vim.tbl_extend('force', bufopts, { desc = "Go to type definition" }))
 vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, vim.tbl_extend('force', bufopts, { desc = "Go to implementation" }))
 vim.keymap.set('n', 'K', vim.lsp.buf.hover, vim.tbl_extend('force', bufopts, { desc = "Hover documentation" }))
 vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, vim.tbl_extend('force', bufopts, { desc = "Code action" }))
 vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, vim.tbl_extend('force', bufopts, { desc = "Rename symbol" }))
 vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_next, vim.tbl_extend('force', bufopts, { desc = "Go to next diagnostic" }))
 vim.keymap.set('n', '<leader>dk', vim.diagnostic.goto_prev, vim.tbl_extend('force', bufopts, { desc = "Go to previous diagnostic" }))

end

vim.opt.completeopt={"menu","menuone","noselect"}
local cmp = require'cmp'

cmp.setup({
	snippet = {
	  expand = function(args)
		require('luasnip').lsp_expand(args.body)
	  end,
	},
	mapping = cmp.mapping.preset.insert({
	  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
	  ['<C-f>'] = cmp.mapping.scroll_docs(4),
	  ['<C-e>'] = cmp.mapping.abort(),
	  ['<CR>'] = cmp.mapping.confirm({ select = false }),
	}),
	sources = cmp.config.sources({
	  { name = 'nvim_lsp' },
	  { name = 'luasnip' },
	}, {
	  { name = 'buffer' },
	})
})


require'lspconfig'.gopls.setup{
	on_attach = on_attach,
	capabilities = capabilities,
}
require'lspconfig'.bashls.setup{
	on_attach = on_attach,
	capabilities = capabilities,
}
require'lspconfig'.pyright.setup{
	on_attach = on_attach,
	capabilities = capabilities,
}
require'lspconfig'.rust_analyzer.setup{
	on_attach = on_attach,
	capabilities = capabilities,
}
require'lspconfig'.solargraph.setup{
	on_attach = on_attach,
	capabilities = capabilities,
}
