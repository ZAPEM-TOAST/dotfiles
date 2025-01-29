
-- Status line config

local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    return
end

lualine.setup {
  options = {
    disabled_filetypes = {
      statusline = { "neo-tree" },
      winbar = { "neo-tree" },
    },
    theme = 'auto',
    section_separators = { left = '', right = '' },
    component_separators = '',
    icons_enabled = true
  },
  sections = {
    lualine_a = { { 'mode', separator = { right = '' }, right_padding = 2 } },
    lualine_b = { 'filename', 'branch' },
    lualine_c = {},
    lualine_x = {'encoding'},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { left = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
}

