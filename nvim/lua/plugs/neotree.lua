
-- nerd tree config

local status_ok, neo_tree = pcall(require, "neo-tree")
if not status_ok then
    return
end


neo_tree.setup({
  filesystem = {
    bind_to_cwd = true,
    hijack_netrw_behavior = "open_current",
    follow_current_file = {
            enabled = true,
            leave_dirs_open = true,
          },
    filtered_items = {
      hide_hidden = false,
      hide_dotfiles = false,
    },
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
  window = {
    mappings = {
      ["<Tab>"] = "open",
    },
  },
})

-- Set keybinding to toggle Neotree with <leader>e
vim.api.nvim_set_keymap('n', '<leader>e', ':Neotree toggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bf", ":Neotree buffers reveal toggle float<CR>", {noremap=true, silent = true})


