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

require("lazy").setup({ { "LazyVim/LazyVim", import = "lazyvim.plugins" }, { import = "seby.plugins" } }, {
    checker = {
        enabled = false, -- disable check for plugin updates
    },
    change_detection = {
        enabled = false, -- disable check for config file changes
    },
})

-- General/Global LSP Configuration
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
require("lspconfig").gopls.setup({})

require("neo-tree").setup({
    -- auto_open = false,
})

--
-- require("dap-go").setup({
--     -- Additional dap configurations can be added.
--     -- dap_configurations accepts a list of tables where each entry
--     -- represents a dap configuration. For more details do:
--     -- :help dap-configuration
--     dap_configurations = {
--         {
--             -- Must be "go" or it will be ignored by the plugin
--             type = "go",
--             name = "Attach remote",
--             mode = "remote",
--             request = "attach",
--         },
--     },
--     -- delve configurations
--     delve = {
--         -- the path to the executable dlv which will be used for debugging.
--         -- by default, this is the "dlv" executable on your PATH.
--         path = "dlv",
--         -- time to wait for delve to initialize the debug session.
--         -- default to 20 seconds
--         initialize_timeout_sec = 20,
--         -- a string that defines the port to start delve debugger.
--         -- default to string "${port}" which instructs nvim-dap
--         -- to start the process in a random available port
--         port = "${port}",
--         -- additional args to pass to dlv
--         args = {},
--         -- the build flags that are passed to delve.
--         -- defaults to empty string, but can be used to provide flags
--         -- such as "-tags=unit" to make sure the test suite is
--         -- compiled during debugging, for example.
--         -- passing build flags using args is ineffective, as those are
--         -- ignored by delve in dap mode.
--         build_flags = "",
--         -- whether the dlv process to be created detached or not. there is
--         -- an issue on Windows where this needs to be set to false
--         -- otherwise the dlv server creation will fail.
--         detached = true,
--         -- the current working directory to run dlv from, if other than
--         -- the current working directory.
--         cwd = nil,
--     },
-- })
