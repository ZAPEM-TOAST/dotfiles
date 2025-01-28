
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
    ensure_installed = { "pyright", "html", "cssls", "lua_ls" } -- Add other servers as needed
})

local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Enable snippet support
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Setup Pyright for Python
lspconfig.pyright.setup {
    on_attach = function(client, bufnr)

    end,
    capabilities = capabilities,
}

-- Setup HTML LSP for HTML files
lspconfig.html.setup {
    on_attach = function(client, bufnr)

    end,
    capabilities = capabilities,
}

-- Setup CSS LSP for CSS files
lspconfig.cssls.setup {
    on_attach = function(client, bufnr)

    end,
    capabilities = capabilities,
}

-- Setup Lua Language Server for Lua
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

