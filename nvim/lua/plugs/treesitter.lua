
-- Syntax highlighting config

local status_ok, tree_sitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end



tree_sitter.setup {
  ensure_installed = { "python", "html", "javascript", "css", "json"},
  sync_install = false,
  autopairs = {
      enable = true,
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

