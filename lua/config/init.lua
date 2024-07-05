local function init()
    -- set configuration here

    -- options
    vim.g.theme = "onedark"

    -- autocmds
    require("config.autocmds")
    -- lazy.nvim
    require("config.lazy")
    -- global mappings (must be loaded after lazy)
    require("config.mappings")
end
init()
