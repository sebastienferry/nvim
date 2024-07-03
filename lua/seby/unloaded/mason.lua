return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    opts = {
        ensure_installed = {
            "goimports",
            "gofumpt",
            "gomodifytags",
            "impl",
            "delve",
        },
    },
}
