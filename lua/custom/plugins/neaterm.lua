return {
  'Dan7h3x/neaterm.nvim',
  branch = 'stable',
  event = 'VeryLazy',
  opts = {
    keymaps = {
      toggle = '<leader>tt',
      next = '<C-S-PageDown>',
      prev = '<C-S-PageUp>',
    },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'ibhagwan/fzf-lua',
  },
}
