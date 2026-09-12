return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		bigfile = { enabled = true },
		scratch = { enabled = true },
		dashboard = {
			preset = {
				pick = function(cmd, opts)
					return Snacks.dashboard.pick(cmd, opts)
				end,
				-- header = [[
				--      ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
				--      ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z
				--      ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z
				--      ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z
				--      ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║
				--      ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝
				--      ]],
				header = [[                           
	▄▄         ▄ ▄▄▄▄▄▄▄    
▄▀███▄     ▄██ █████▀     
██▄▀███▄   ███            
███  ▀███▄ ███            
███    ▀██ ███            
███      ▀ ███            
▀██ █████▄▀█▀▄██████▄     
	▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀    
												 ]],
				---@type snacks.dashboard.Item[]
				keys = {
					{
						icon = " ",
						key = "f",
						desc = "Find File",
						action = ":lua Snacks.dashboard.pick('files')",
					},
					{ icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
					{
						icon = " ",
						key = "g",
						desc = "Find Text",
						action = ":lua Snacks.dashboard.pick('live_grep')",
					},
					{
						icon = " ",
						key = "r",
						desc = "Recent Files",
						action = ":lua Snacks.dashboard.pick('oldfiles')",
					},
					{
						icon = " ",
						key = "c",
						desc = "Config",
						action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
					},
					{ icon = " ", key = "s", desc = "Restore Session", section = "session" },
					{ icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
				},
			},
		},
		explorer = { enabled = true },
		indent = { enabled = false },
		input = { enabled = false },
		notifier = { enabled = true },
		notify = { enabled = true },
		picker = { enabled = true },
		quickfile = { enabled = false },
		scope = { enabled = false },
		scroll = { enabled = false },
		statuscolumn = { enabled = false },
		words = { enabled = false },
		styles = {
			notification = {},
		},
	},
}
