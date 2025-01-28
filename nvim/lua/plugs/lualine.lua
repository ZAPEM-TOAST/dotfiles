
-- Status line config

local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    return
end

local colors = {
  fg1    = '#282828',
  color2 = '#504945',
  fg2    = '#ddc7a1',
  color3 = '#32302f',
  color4 = '#a89984',
  color5 = '#7daea3',
  color6 = '#a9b665',
  color7 = '#d8a657',
  color8 = '#d3869b',
  color9 = '#ea6962',
}

local gruvbox_zap = {
  normal = {
    a = { fg = colors.fg1, bg = colors.color4, gui = 'bold' },
    b = { fg = colors.fg2, bg = colors.color2 },
    c = { fg = colors.fg2, bg = colors.color3 },
  },
  command = { a = { fg = colors.fg1, bg = colors.color5, gui = 'bold' } },
  inactive = { a = { fg = colors.fg2, bg = colors.color2 } },
  insert = { a = { fg = colors.fg1, bg = colors.color6, gui = 'bold' } },
  replace = { a = { fg = colors.fg1, bg = colors.color7, gui = 'bold' } },
  terminal = { a = { fg = colors.fg1, bg = colors.color8, gui = 'bold' } },
  visual = { a = { fg = colors.fg1, bg = colors.color9, gui = 'bold' } },
}
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

