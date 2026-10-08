-- LazyGit integration
-- https://github.com/kdheepak/lazygit.nvim
--
-- Requires the `lazygit` binary on $PATH (installed at /usr/bin/lazygit).

vim.pack.add {
  'https://github.com/kdheepak/lazygit.nvim',
  'https://github.com/nvim-lua/plenary.nvim', -- required dependency (already added in init.lua; re-adding is a no-op)
}

vim.keymap.set('n', '<leader>lg', '<cmd>LazyGit<cr>', { desc = 'LazyGit' })
