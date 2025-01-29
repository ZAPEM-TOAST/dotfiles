
-- Fuzzy finder config

local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    return
end

local builtin = require("telescope.builtin")

telescope.setup({
  defaults = {
    layout_config = {
      horizontal = {
        prompt_position = "top",
      },
      vertical = {
        prompt_position = "top",
      },
    },
    sorting_strategy = "ascending",
  },
 })
telescope.load_extension('project')

vim.keymap.set("n", "<leader>fg", builtin.oldfiles, { desc = 'Telescope oldfiles' })
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find_files' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = 'Telescope help_tags'} )
vim.keymap.set('n', '<leader>fd', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set("n", "<leader>fp", function()
  telescope.extensions.project.project()
end, { desc = "Telescope Projects" })
