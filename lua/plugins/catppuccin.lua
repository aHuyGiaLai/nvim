return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			transparent_background = true,
            custom_highlights = function(colors)
                return {
                    CursorLine = { bg = colors.surface0 },
                }
            end,
		})
		vim.cmd.colorscheme("catppuccin-mocha")
	end,
}
