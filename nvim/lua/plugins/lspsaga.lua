return {
	'nvimdev/lspsaga.nvim',
	config = function()
		require('lspsaga').setup({
			symbol_in_winbar = {
				enable = false,
			},

			ui = {
				-- Replace the default emoji with a Nerd Font lightbulb icon
				code_action = "  ", 
			},

			-- Keep your lightbulb feature enabled
			lightbulb = {
				enable = true,
				sign = true,
				virtual_text = true,
			},
		})
	end,
	dependencies = {
		'nvim-treesitter/nvim-treesitter', -- optional
		'nvim-tree/nvim-web-devicons',     -- optional
	}
}
