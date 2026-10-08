-- Python virtual environment selector
-- https://github.com/linux-cultist/venv-selector.nvim
--
-- Requires `fd`/`fdfind` on $PATH (installed at /usr/bin/fdfind).

vim.pack.add {
  'https://github.com/linux-cultist/venv-selector.nvim',
  'https://github.com/neovim/nvim-lspconfig', -- dependency (already added in init.lua; re-adding is a no-op)
  'https://github.com/mfussenegger/nvim-dap', -- optional debug integration
  'https://github.com/mfussenegger/nvim-dap-python', -- optional debug integration
  'https://github.com/nvim-telescope/telescope.nvim', -- dependency (already added in init.lua; re-adding is a no-op)
}

require('venv-selector').setup {
  search = {},
  option = {},
}

vim.keymap.set('n', '<leader>vs', '<cmd>VenvSelect<cr>', { desc = 'Select Python Viertual Environment' })
vim.keymap.set('n', '<leader>vc', '<cmd>VenvSelectCached<cr>', { desc = 'Load Python Virtual Environment From Cache' })
