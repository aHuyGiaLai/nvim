return {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- optional cho icon/nền
    opts = {
        -- Cấu hình cơ bản để hiển thị trực tiếp
        enabled = true,
        heading = {
            icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
        },
        checkbox = {
            enabled = true,
            unchecked = { icon = "󰄱 " },
            checked = { icon = " " },
        },
    },
}
