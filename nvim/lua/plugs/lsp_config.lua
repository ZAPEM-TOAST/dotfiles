
-- Mason LSP manager config

local status_ok, mason = pcall(require, "mason")
if not status_ok then
    return
end

local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
    return
end

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
    return
end





mason.setup()
mason_lspconfig.setup({
    ensure_installed = { "pyright", "html", "cssls", "lua_ls", "ts_ls" }
})

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.pyright.setup {
    on_attach = function(client, bufnr)
    end,

    capabilities = capabilities,
}

lspconfig.html.setup {
    on_attach = function(client, bufnr)
    end,

    capabilities = capabilities,
}

lspconfig.cssls.setup {
    on_attach = function(client, bufnr)
    end,
    capabilities = capabilities,
}

lspconfig.ts_ls.setup {
    on_attach = function(client, bufnr)
    end,
    capabilities = capabilities,
}

lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' },
            },
        },
    },
    on_attach = function(client, bufnr)
    end,

    capabilities = capabilities,
}

