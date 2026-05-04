return {
	"epwalsh/obsidian.nvim",
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "GaHyVault",
				path = "/mnt/data/obsiGaHy/Main Vault - dùng chung",
			},
		},
		notes_subdir = "inbox",
		new_notes_location = "notes_subdir",

		disable_frontmatter = true,

		templates = {
			subdir = "templates",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M:%S",
		},

		mappings = {
			["gf"] = {
				action = function()
					return require("obsidian").util.gf_passthrough()
				end,
				opts = { noremap = false, expr = true, buffer = true },
			},
			["<leader>ti"] = {
				action = function()
					return require("obsidian").util.toggle_checkbox()
				end,
				opts = { buffer = true },
			},
		},

		completion = {
			nvim_cmp = true,
			min_chars = 2,
		},

		ui = { enable = false }, -- Render-markdown.nvim sẽ đảm nhận phần UI
	},
}
