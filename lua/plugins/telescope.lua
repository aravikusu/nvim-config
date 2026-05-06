return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    keys = {
		{ '<leader>pf', '<cmd>Telescope find_files<cr>', desc = 'Find files'},
		{ '<C-p>', '<cmd>Telescope git_files<cr>', desc = 'Find files (in git)'},
		{ '<leader>ps', function() 
				require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ")} )
			end,
			desc = 'Telescope grep search'
		},
		{ '<leader>pd', '<cmd>Telescope lsp_definitions<cr>', desc = 'List definitions'},
		{ '<leader>pr', '<cmd>Telescope lsp_references<cr>', desc = 'List references'}
    }
}
