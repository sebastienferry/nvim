local themes = {
    sonokai = {
        "sainnhe/sonokai",
        config = function()
            vim.cmd("colorscheme sonokai")
        end,
    },
    tokyonight = {
        "folke/tokyonight.nvim",
        config = function()
            vim.cmd("colorscheme tokyonight")
        end,
    },
    catppuccin = {
        "catppuccin/nvim",
        config = function()
            vim.cmd("colorscheme catppuccin")
        end,
    },
    kanagawa = {
        "rebelot/kanagawa.nvim",
        config = function()
            vim.cmd("colorscheme kanagawa")
        end,
    },
    moonlight = {
        "shaunsingh/moonlight.nvim",
        config = function()
            vim.cmd("colorscheme moonlight")
        end,
    },
    gruvbox = {
        "npxbr/gruvbox.nvim",
        config = function()
            vim.cmd("colorscheme gruvbox")
        end,
    },
    nightfox = {
        "EdenEast/nightfox.nvim",
        config = function()
            vim.cmd("colorscheme nightfox")
        end,
    },
    onedark = {
        "navarasu/onedark.nvim",
        style = "darker",
        config = function()
            vim.cmd("colorscheme onedark")
        end,
    },
}

return themes[vim.g.theme]
