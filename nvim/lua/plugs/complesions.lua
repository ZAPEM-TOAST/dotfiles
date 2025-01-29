
-- Completions setup
-- Cmp, Luasnip, Lspkind config

local status_ok, cmp = pcall(require, "cmp")
if not status_ok then
    return
end

local status_ok, ls = pcall(require, "luasnip")
if not status_ok then
    return
end

local status_ok, lspkind = pcall(require, "lspkind")
if not status_ok then
    return
end


require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
    snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end,
    },

    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },

    mapping = cmp.mapping.preset.insert({
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.abort(),
      ["<CR>"] = cmp.mapping.confirm({ select = true }),
      ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif ls.expand_or_jumpable() then
                ls.expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif ls.jumpable(-2) then
                ls.jump(-2)
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),

    sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "luasnip" },-- For luasnip users.
    }, {
      { name = "buffer" },
      { name = 'path' },

    }),
    performance = {
       max_view_entries = 10, -- **Limits suggestions to 10**
    },
})
