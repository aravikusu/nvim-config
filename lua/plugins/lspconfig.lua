return {
	'neovim/nvim-lspconfig',
	config = function()
		vim.lsp.config('lua_ls', {
			settings = {
				Lua = {
					runtime = { version = 'LuaJIT'},
					workspace = {
						checkThirdParty = false,
						library = vim.api.nvim_get_runtime_file('', true),
					},
				},
			},
		})

		vim.lsp.enable('lua_ls')
		vim.lsp.enable('gdscript')
		vim.lsp.enable('gdshader_lsp')
		vim.lsp.enable('pyright')
		vim.lsp.enable('markdown-oxide')
	end,
}
