return {
	{--Git plugin
		'tpope/vim-fugitive',
	},
	{--show css colors
		'brenoprata10/nvim-highlight-colors',
		config = function()
			require('nvim-highlight-colors').setup({})
		end
	},
	{
		"mhinz/vim-signify",
		config = function()
			vim.g.signify_vcs_cmds = {
				svn = "svn diff --diff-cmd=diff -x -U3"
			}
			vim.g.signify_sign_add    = '+'
			vim.g.signify_sign_delete = '_'
			vim.g.signify_sign_change = '~'
		end,
		event = { "BufReadPost", "BufWritePost" },
	}

}
