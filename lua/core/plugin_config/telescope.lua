require('telescope').setup()
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<c-p>', builtin.find_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>eg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>eh', builtin.help_tags, {})
