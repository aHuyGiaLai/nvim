return {
    {
        "williamboman/mason.nvim",
        -- version = "v1.11.0",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
            -- manually install packages that do not exist in this list please
            ensure_installed = { "lua_ls" },
        },
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
            -- lua
            vim.lsp.config["lua_ls"] = {
                cmd = { "lua-language-server" },
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                            checkThirdParty = false,
                        },
                        telemetry = { enable = false },
                    },
                },
            }
            vim.lsp.enable("lua_ls")
            -- R
            vim.lsp.config["r_language_server"] = {
                capabilities = capabilities,
            }
            vim.lsp.enable("r_language_server")
        end,
    },
}


