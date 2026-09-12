return {
	"folke/tokyonight.nvim",
	lazy = false,
	-- dankcolors.lua is priority 1000, so 999 makes this load right after it and
	-- win deterministically -- the same result load order used to give by accident.
	priority = 999,
	config = function()
		vim.cmd.colorscheme("tokyonight-night")
	end,
}
