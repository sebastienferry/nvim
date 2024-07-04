-- The following lua script install the lazy.nvim plugins manager.
-- The code can be found at https://github.com/LazyVim/starter/blob/main/lua/config/lazy.lua
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Below, we setup the LazyVim default plugins and my custom plugins.
require("lazy").setup({
    -- Import the default LazyVim plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- Import my custom plugins
    { import = "seby.plugins" },
})

--  LSP Configuration
--  The following is a fix for golang and NeoTree,
--  where we wrap the existing make_client_capabilities.
local api = vim.api
local lsp = vim.lsp
local make_client_capabilities = lsp.protocol.make_client_capabilities
function lsp.protocol.make_client_capabilities()
    local caps = make_client_capabilities()
    if not (caps.workspace or {}).didChangeWatchedFiles then
        vim.notify("lsp capability didChangeWatchedFiles is already disabled", vim.log.levels.WARN)
    else
        caps.workspace.didChangeWatchedFiles = nil
    end
    return caps
end

-- LSP Configuration : gopls and NeoTree
require("lspconfig").gopls.setup({})
require("neo-tree").setup({})
