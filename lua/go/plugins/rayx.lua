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
    },
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
}
