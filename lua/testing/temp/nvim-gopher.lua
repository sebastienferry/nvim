luaconfig = {
    "arp242/gopher.vim",
    ft = "go",
    config = function(_, opts)
        require("gopher").setup(opts)
    end,
    build = function()
        vim.cmd([[ silent!  GopherInstallDeps]])
    end,
}

return luaconfig
