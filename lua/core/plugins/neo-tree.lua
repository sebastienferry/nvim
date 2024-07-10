local neotree = {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim", -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        {
            "s1n7ax/nvim-window-picker",
            version = "2.*",
            config = function()
                require("window-picker").setup({
                    filter_rules = {
                        include_current_win = false,
                        autoselect_one = true,
                        -- filter using buffer options
                        bo = {
                            -- if the file type is one of following, the window will be ignored
                            filetype = { "neo-tree", "neo-tree-popup", "notify" },
                            -- if the buffer type is one of following, the window will be ignored
                            buftype = { "terminal", "quickfix" },
                        },
                    },
                })
            end,
        },
    },
    keys = {
        { "<leader>nt", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
    },
    init = function()
        -- FIX: use `autocmd` for lazy-loading neo-tree instead of directly requiring it,
        -- because `cwd` is not set up properly.
        vim.api.nvim_create_autocmd("BufEnter", {
            group = vim.api.nvim_create_augroup("Neotree_start_directory", {
                clear = true,
            }),
            desc = "Start Neo-tree with directory",
            once = true,
            callback = function()
                if package.loaded["neo-tree"] then
                    return
                else
                    local stats = vim.uv.fs_stat(vim.fn.argv(0))
                    if stats and stats.type == "directory" then
                        require("neo-tree")
                    end
                end
            end,
        })
    end,
    opts = {
        sources = { "filesystem", "buffers", "git_status" },
        open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
        ignore = { ".git", "node_modules", ".cache" },
        auto_close = true,
        filesystem = {
            bind_to_cwd = false,
            follow_current_file = {
                enabled = true,
            },
            use_libuv_file_watcher = true,
        },
        update_focused_file = {
            enable = true,
            update_cwd = true,
        },
        view = {
            width = 30,
            side = "left",
            auto_resize = false,
            mappings = {
                custom_only = false,
            },
        },
    },
    config = function()
        require("neo-tree").setup({
            auto_close = true,
            source_selector = {
                winbar = true,
                statusline = true,
            },
        })
    end,
}

return neotree
