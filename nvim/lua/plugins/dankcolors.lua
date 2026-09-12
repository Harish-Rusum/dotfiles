return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#11111b',
				base01 = '#11111b',
				base02 = '#9d9191',
				base03 = '#9d9191',
				base04 = '#feeeee',
				base05 = '#fff8f8',
				base06 = '#fff8f8',
				base07 = '#fff8f8',
				base08 = '#ff9f9f',
				base09 = '#ff9f9f',
				base0A = '#ffdddd',
				base0B = '#b9ffa5',
				base0C = '#ffeded',
				base0D = '#ffdddd',
				base0E = '#ffe3e3',
				base0F = '#ffe3e3',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#9d9191',
				fg = '#fff8f8',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#ffdddd',
				fg = '#11111b',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#9d9191' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ffeded', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#ffe3e3',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#ffdddd',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#ffdddd',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#ffeded',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#b9ffa5',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#feeeee' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#feeeee' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#9d9191',
				italic = true
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()
				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)
					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
