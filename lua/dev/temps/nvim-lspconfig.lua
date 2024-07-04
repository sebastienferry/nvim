return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "mason.nvim",
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason").setup()
            -- LSP settings

            require("lspconfig").gopls.setup({
                filetypes = { "go", "gomod", "gowork", "gotmpl" },
                root_dir = require("lspconfig.util").root_pattern("go.work", "go.mod", ".git"),
                settings = {
                    gopls = {
                        completeUnimported = true,
                        usePlaceholders = true,
                        analyses = {
                            unusedparams = true,
                        },
                    },
                },
            })
        end,
    },
  },
}
