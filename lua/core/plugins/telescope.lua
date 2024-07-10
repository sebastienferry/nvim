return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            enabled = true,
        },
        { "nvim-telescope/telescope-file-browser.nvim", enabled = true },
    },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Commits" },
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                sorting_strategy = "ascending",
                layout_strategy = "horizontal",
                layout_config = { prompt_position = "top" },
            },
            pickers = {
                find_files = {
                    hidden = true,
                },
            },
            extensions = {
                file_browser = {
                    path_display = { "shorten" },
                    hidden = true,
                    prompt_title = "File Browser",
                    cwd = vim.fn.getcwd(),
                },
                fzf = {
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                    hidden = true,
                },
            },
        })

        telescope.load_extension("fzf")
        telescope.load_extension("file_browser")
        --         extensions = {
        --             file_browser = {
        --                 path = "%:p:h", -- open from within the folder of your current buffer
        --                 display_stat = false, -- don't show file stat
        --                 grouped = true, -- group initial sorting by directories and then files
        --                 hidden = true, -- show hidden files
        --                 hide_parent_dir = true, -- hide `../` in the file browser
        --                 hijack_netrw = true, -- use telescope file browser when opening directory paths
        --                 prompt_path = true, -- show the current relative path from cwd as the prompt prefix
        --                 use_fd = true, -- use `fd` instead of plenary, make sure to install `fd`
        --             },
        --         },
        --     })
        --
        --

        local builtin = require("telescope.builtin")
        local map = vim.keymap.set
        local opts = { noremap = true, silent = true }
        --
        -- map("n", "-", ":Telescope file_browser<CR>")
        map("n", "<leader>ff", builtin.find_files, opts) -- Lists files in your current working directory, respects .gitignore
        map("n", "<leader>fg", builtin.live_grep, opts)
        map("n", "<leader>fx", builtin.treesitter, opts) -- Lists tree-sitter symbols
        map("n", "<leader>fs", builtin.spell_suggest, opts) -- Lists spell options
        map("n", "<leader>fr", "<cmd>Telecope lsp_references<cr>", opts) -- Lists lsp references
        map("n", "<leader>fd", "<cmd>Telescope lsp_definitions<cr>", opts) -- Lists lsp definitions
        map("n", "<leader>fi", "<cmd>Telescope lsp_implementations<cr>", opts) -- Lists lsp implementations
        map("n", "<leader>ft", "<cmd>Telescope lsp_type_definitions<cr>", opts) -- Lists lsp type definitions
        map("n", "<leader>fc", "<cmd>Telescope lsp_code_actions<cr>", opts) -- Lists lsp code actions
        map("n", "<leader>fq", "<cmd>Telescope lsp_document_diagnostics<cr>", opts) -- Lists lsp document diagnostics
        map("n", "<leader>fu", "<cmd>Telescope lsp_incoming_calls<cr>", opts)
        map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
    end,
}
