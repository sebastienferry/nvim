local telescope = require('telescope')
telescope.setup({
    defaults = {
        layout_config = { prompt_position = "top" },
    }
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-o>', builtin.find_files, { desc = "Find/Open Files..."})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})