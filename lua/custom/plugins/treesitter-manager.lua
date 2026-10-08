-- Tree-sitter parser manager (requires the tree-sitter CLI on $PATH)
-- https://github.com/romus204/tree-sitter-manager.nvim

vim.pack.add { 'https://github.com/romus204/tree-sitter-manager.nvim' }

require('tree-sitter-manager').setup {
  -- ensure_installed = {}, -- list of parsers to install at the start of a neovim session
  -- auto_install = false, -- if enabled, install missing parsers when editing a new file
  -- languages = {}, -- override or add new parser sources
}
