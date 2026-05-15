return {
    "R-nvim/R.nvim",
    -- Only required if you also set defaults.lazy = true
    lazy = false,
    dependencies = {
        "R-nvim/cmp-r",
    },
    config = function()
        -- Create a table with the options to be passed to setup()
        ---@type RConfigUserOpts
        local opts = {
            hook = {
                on_filetype = function()
                    vim.keymap.set("n", "<Enter>", "<Plug>RDSendLine", { buffer = true })
                    vim.keymap.set("v", "<Enter>", "<Plug>RSendSelection", { buffer = true })
                end,
            },
            R_args = { "--quiet", "--no-save" },
            min_editor_width = 72,
            rconsole_width = 78,
            objbr_mappings = { -- Object browser keymap
                c = "class", -- Call R functions
                ["<LocalLeader>gg"] = "head({object}, n = 15)", -- Use {object} notation to write arbitrary R code.
                v = function()
                    -- Run lua functions
                    require("r.browser").toggle_view()
                end,
            },
        }
        -- Check if the environment variable "R_AUTO_START" exists.
        -- If using fish shell, you could put in your config.fish:
        -- alias r "R_AUTO_START=true nvim"
        if vim.env.R_AUTO_START == "true" then
            opts.auto_start = "on startup"
            opts.objbr_auto_start = true
        end
        require("r").setup(opts)
    end,
}
