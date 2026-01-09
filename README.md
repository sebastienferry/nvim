# Neovim Configuration

This setup is based on https://www.vineeth.io/posts/neovim-setup

## Installed Plugins

### File Navigation & Search
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder for files, text, and more
  - Dependencies: plenary.nvim, telescope-fzf-native.nvim

### UI Enhancements
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** - Statusline
- **[which-key.nvim](https://github.com/folke/which-key.nvim)** - Display keybindings
- **[nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)** - File icons
- **[indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)** - Indent guides

### Code Intelligence
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Syntax highlighting and parsing

### LSP (Language Server Protocol)
- **[mason.nvim](https://github.com/williamboman/mason.nvim)** - LSP installer
- **[mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)** - Mason + lspconfig integration
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** - LSP configuration
  - Pre-configured servers: lua_ls, ts_ls, pyright

### Autocompletion
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** - Completion engine
- **[cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)** - LSP completion source
- **[cmp-buffer](https://github.com/hrsh7th/cmp-buffer)** - Buffer completion source
- **[cmp-path](https://github.com/hrsh7th/cmp-path)** - Path completion source
- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)** - Snippet engine
- **[cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)** - Snippet completion source

## Keybindings

### Leader Key
- Leader: `<Space>`

### Telescope (File Finding)
- `<Space>ff` - Find files
- `<Space>fg` - Find git files
- `<Space>fs` - Search text in files (live grep)
- `<Space>fb` - Find open buffers
- `<Space>fh` - Find help documentation
- `<Space>fr` - Find recent files

### LSP (when in code files)
- `gd` - Go to definition
- `gD` - Go to declaration
- `K` - Hover documentation
- `gi` - Go to implementation
- `gr` - Find references
- `<Space>rn` - Rename symbol
- `<Space>ca` - Code actions
- `<Space>f` - Format code
- `<Ctrl-k>` - Signature help

### Which-key
- `<Space>?` - Show buffer local keymaps

### Completion (in insert mode)
- `<Ctrl-Space>` - Trigger completion
- `<CR>` - Confirm selection
- `<Ctrl-e>` - Abort completion
- `<Ctrl-b>` - Scroll docs up
- `<Ctrl-f>` - Scroll docs down

## Plugin Manager
Uses [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management.

### Lazy Commands
- `:Lazy` - Open plugin manager UI
- `:Lazy sync` - Install/update/clean plugins
- `:Lazy clean` - Remove unused plugins
- `:Lazy update` - Update plugins
