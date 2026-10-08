-- Pretty markdown rendering
-- https://github.com/MeanderingProgrammer/render-markdown.nvim

vim.pack.add {
  'https://github.com/MeanderingProgrammer/render-markdown.nvim',
  'https://github.com/nvim-treesitter/nvim-treesitter', -- required dependency (already added in init.lua; re-adding is a no-op)
  'https://github.com/nvim-tree/nvim-web-devicons',
}

---@type render.md.UserConfig
require('render-markdown').setup {}
