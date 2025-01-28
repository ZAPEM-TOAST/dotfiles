
-- Tabs looks and functionality config 

local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
    return
end



bufferline.setup {
    options = {
    mode = "tabs",
    diagnostics = true,
    separator_style = "thick",
    always_show_bufferline = false,
    show_close_icon = false,
    show_buffer_close_icons = false,
    require('plugs.colorscheme')
  }
}

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { silent = true })
require('plugs.colorscheme')
