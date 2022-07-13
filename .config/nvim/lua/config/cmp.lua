local luasnip = require('luasnip')
local cmp = require('cmp')

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered()
	},
	mapping = {

	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' }
	},
	{
		{ name = 'buffer' }
	})
})
