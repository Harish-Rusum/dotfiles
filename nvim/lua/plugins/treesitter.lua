return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup()

		local ensure_installed = {
			"bash",
			"c",
			"cpp",
			"css",
			"html",
			"json",
			"jsonc",
			"lua",
			"luadoc",
			"markdown",
			"markdown_inline",
			"python",
			"query",
			"toml",
			"vim",
			"vimdoc",
			"yaml",
			-- query-only dependencies of the above; nvim-treesitter's health
			-- check reports "dependency missing" without them
			"ecma",
			"html_tags",
			"javascript",
			"jsx",
		}

		-- The `main` branch compiles parsers with the tree-sitter CLI, so without
		-- it every install attempt fails noisily on startup. Warn once instead.
		if vim.fn.executable("tree-sitter") == 1 then
			local installed = require("nvim-treesitter.config").get_installed("parsers")
			local missing = vim.tbl_filter(function(lang)
				return not vim.tbl_contains(installed, lang)
			end, ensure_installed)
			if #missing > 0 then
				require("nvim-treesitter").install(missing)
			end
		else
			vim.schedule(function()
				vim.notify(
					"tree-sitter CLI not found; parsers cannot be installed or updated.\n"
						.. "Install it with: sudo pacman -S tree-sitter-cli",
					vim.log.levels.WARN,
					{ title = "nvim-treesitter" }
				)
			end)
		end

		local max_filesize = 100 * 1024

		vim.api.nvim_create_autocmd("FileType", {
			group = vim.api.nvim_create_augroup("TreesitterStart", { clear = true }),
			callback = function(ev)
				local lang = vim.treesitter.language.get_lang(vim.bo[ev.buf].filetype)
				if not lang then
					return
				end

				local stats = vim.uv.fs_stat(vim.api.nvim_buf_get_name(ev.buf))
				if stats and stats.size > max_filesize then
					return
				end

				if not pcall(vim.treesitter.start, ev.buf, lang) then
					return
				end

				-- folds; indent stays off, matching the previous config
				vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
			end,
		})
	end,
}
