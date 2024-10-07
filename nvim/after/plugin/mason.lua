local mason = require('mason-lspconfig')

require('mason').setup({})
mason.setup {
	ensure_installed = {
		'lua_ls',
		'clangd',
		'ts_ls',
		'eslint',
	},
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end,
	},
}
