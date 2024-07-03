return {
    "EdenEast/nightfox.nvim",
    name = "nightfox",
    priority = 1000,
    config = function()
        require("nightfox").load()
        vim.cmd([[colorscheme nightfox]])
    end,
}
-- "folke/tokyonight.nvim",
-- name = "tokyonight",
-- lazy = false,
-- priority = 1000,
-- opts = {},
-- config = function ()
--     vim.cmd[[colorscheme tokyonight]]
-- end

