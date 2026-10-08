-- Drive the opencode agent from Nvim
-- https://github.com/nickjvandyke/opencode.nvim
--
-- NOTE: the old lazy.nvim spec optionally extended folke/snacks.nvim when
-- present. snacks.nvim is not installed here, so that integration is omitted.

vim.pack.add { { src = 'https://github.com/nickjvandyke/opencode.nvim', version = vim.version.range '*' } }

vim.g.opencode_opts = {} ---@type opencode.Opts

vim.o.autoread = true -- Required for `opts.events.reload`

-- Recommended keymaps
vim.keymap.set({ 'n', 'x' }, '<C-a>', function() require('opencode').ask('@this: ', { submit = true }) end, { desc = 'Ask opencode…' })
vim.keymap.set({ 'n', 'x' }, '<C-x>', function() require('opencode').select() end, { desc = 'Execute opencode action…' })
vim.keymap.set({ 'n', 't' }, '<C-o>', function() require('opencode').toggle() end, { desc = 'Toggle opencode' })

vim.keymap.set({ 'n', 'x' }, 'go', function() return require('opencode').operator '@this ' end, { desc = 'Add range to opencode', expr = true })
vim.keymap.set('n', 'goo', function() return require('opencode').operator '@this ' .. '_' end, { desc = 'Add line to opencode', expr = true })

vim.keymap.set('n', '<S-C-u>', function() require('opencode').command 'session.half.page.up' end, { desc = 'Scroll opencode up' })
vim.keymap.set('n', '<S-C-d>', function() require('opencode').command 'session.half.page.down' end, { desc = 'Scroll opencode down' })

-- Keeps <C-a>/<C-x> increment/decrement available via +/-
vim.keymap.set('n', '+', '<C-a>', { desc = 'Increment under cursor', noremap = true })
vim.keymap.set('n', '-', '<C-x>', { desc = 'Decrement under cursor', noremap = true })
