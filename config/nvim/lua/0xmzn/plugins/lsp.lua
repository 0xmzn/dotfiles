return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "mason.nvim" , "neovim/nvim-lspconfig"},
        config = function()
            require("mason-lspconfig").setup()
            require("mason-lspconfig").setup_handlers({
                function (server_name)
                    local opts = {}

                    if server_name == "lua_ls" then
                        opts.settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim" },
                                },
                            },
                        }
                    end
                    require("lspconfig")[server_name].setup(opts)
                end,
            })

        end,
    },
}
