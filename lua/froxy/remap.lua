local builtin = require('telescope.builtin')

-- Find files
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })

-- Find in git files
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Find git files' })

-- Live grep (search text in files)
vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = 'Find string' })

-- Find buffers
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers' })

-- Find help tags
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Find help' })

-- Find recent files
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'Find recent files' })

-- LSP keymaps
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

