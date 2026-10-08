-- Autopairs
-- https://github.com/windwp/nvim-autopairs
--
-- NOTE: the old lazy spec integrated with hrsh7th/nvim-cmp on confirm_done.
-- This config uses blink.cmp as its completion engine, so that integration is
-- omitted; autopairs only handles bracket/quote pairing here.

vim.pack.add { 'https://github.com/windwp/nvim-autopairs' }

require('nvim-autopairs').setup {}
