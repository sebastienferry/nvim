return {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
        "ray-x/guihua.lua",
        "neovim/nvim-lspconfig",
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        require("go").setup()
    end,
    keys = {
        {
            "<leader>cb",
            "<cmd>GoBuild %<cr>",
            desc = "GoBuild",
        },
        {
            "<leader>cr",
            "<cmd>GoRun %<cr>",
            desc = "GoRun",
        },
        {
            "<leader>ct",
            "<cmd>GoTestFunc<cr>",
            desc = "GoTest",
        },
        {
            "<leader>cf",
            "<cmd>GoFillStruct<cr>",
            desc = "GoFillStruct",
        },
        {
            "<leader>ci",
            "<cmd>GoImplements<cr>",
            desc = "GoImplements",
        },
        {
            "<leader>cd",
            "<cmd>GoDef<cr>",
            desc = "GoDef",
        },
        {
            "<leader>cg",
            "<cmd>GoGenerate<cr>",
            desc = "GoGenerate",
        },
        {
            "<leader>ch",
            "<cmd>GoDoc<cr>",
            desc = "GoDoc",
        },
        {
            "<leader>ce",
            "<cmd>GoErrors<cr>",
            desc = "GoErrors",
        },
        {
            "<leader>cv",
            "<cmd>GoVet<cr>",
            desc = "GoVet",
        },
        {
            "<leader>cc",
            "<cmd>GoCoverageToggle<cr>",
            desc = "GoCoverageToggle",
        },
        {
            "<leader>cl",
            "<cmd>GoLint<cr>",
            desc = "GoLint",
        },
        {
            "<leader>cs",
            "<cmd>GoSwap<cr>",
            desc = "GoSwap",
        },
        {
            "<leader>cu",
            "<cmd>GoUpdateBinaries<cr>",
            desc = "GoUpdateBinaries",
        },
        {
            "<leader>cx",
            "<cmd>GoRunLast<cr>",
            desc = "GoRunLast",
        },
    },
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
}
