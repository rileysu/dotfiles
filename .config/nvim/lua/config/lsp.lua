local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local lspconfig = require('lspconfig')

local luadev = require('lua-dev').setup({
	lspconfig = {
		capabilities = capabilities
	}
})
lspconfig.sumneko_lua.setup(luadev)

lspconfig.rust_analyzer.setup({})
