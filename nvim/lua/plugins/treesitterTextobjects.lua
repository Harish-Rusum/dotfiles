return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	branch = "main",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	event = "VeryLazy",
	config = function()
		require("nvim-treesitter-textobjects").setup({
			select = {
				lookahead = true,
				include_surrounding_whitespace = true,
			},
		})

		local select = require("nvim-treesitter-textobjects.select")

		local textobjects = {
			["af"] = { query = "@function.outer", desc = "Select outer part of a function" },
			["if"] = { query = "@function.inner", desc = "Select inner part of a function" },
			["ac"] = { query = "@class.outer", desc = "Select outer part of a class region" },
			["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
			["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter" },
			["ia"] = { query = "@parameter.inner", desc = "Select inner part of a parameter" },
			["as"] = { query = "@local.scope", group = "locals", desc = "Select language scope" },
		}

		for lhs, spec in pairs(textobjects) do
			vim.keymap.set({ "x", "o" }, lhs, function()
				select.select_textobject(spec.query, spec.group or "textobjects")
			end, { desc = spec.desc })
		end
	end,
}
