return {
    "neovim/nvim-lspconfig",
    setup = {
        gopls = function(_, opts)
            LazyVim.lsp.on_attach(function(client, _)
                if not client.server_capabilities.semanticTokensProvider then
                    local semantic = client.config.capabilities.textDocument.semanticTokens
                    client.server_capabilities.semanticTokensProvider = {
                        full = true,
                        legend = {
                            tokenTypes = semantic.tokenTypes,
                            tokenModifiers = semantic.tokenModifiers,
                        },
                        range = true,
                    }
                end
            end, "gopls")
        end,
    },
}
