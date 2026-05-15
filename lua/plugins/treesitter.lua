return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").setup({
            ensure_installed = {
                "c",
                "lua",
                "cpp",
                "r", -- for r-nvim
                "markdown",
                "markdown_inline",
                "rnoweb",
                "yaml",
                "latex",
                "csv",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}

-- highlight, indentation (thụt đầu dòng), xem code, phân tích code
