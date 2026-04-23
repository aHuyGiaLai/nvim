return {
     'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function() 
        require("nvim-treesitter").setup({
            ensure_installed = {"c", "lua", "cpp"},
            sync_install = false,
            highlight = {enable = true},
            indent = {enable = true},
        })
    end,
}
