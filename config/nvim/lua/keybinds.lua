local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set('n', 'gd', telescope_builtin.lsp_definitions, { desc = '[G]oto [D]efinition' })
vim.keymap.set('n', 'gr', telescope_builtin.lsp_references, { desc = '[G]oto [R]eferences' })
vim.keymap.set('n', 'gI', telescope_builtin.lsp_implementations, { desc = '[G]oto [I]mplementation' })
vim.keymap.set('n', '<leader>D',  telescope_builtin.lsp_type_definitions, { desc = 'Type [D]efinition' })
vim.keymap.set('n', '<leader>ds', telescope_builtin.lsp_document_symbols, { desc = '[D]ocument [S]ymbols' })
vim.keymap.set('n', '<leader>ws', telescope_builtin.lsp_dynamic_workspace_symbols, { desc = '[W]orkspace [S]ymbols' })

vim.keymap.set('n', '<leader>sh', telescope_builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sk', telescope_builtin.keymaps, { desc = '[S]earch [K]eymaps' })
vim.keymap.set('n', '<leader>sf', telescope_builtin.git_files, { desc = '[S]earch [F]iles (Git tracked)' })
vim.keymap.set('n', '<leader>saf', telescope_builtin.find_files, { desc = '[S]earch [F]iles (All)' })
vim.keymap.set('n', '<leader>ss', telescope_builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
vim.keymap.set('n', '<leader>sw', telescope_builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', telescope_builtin.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', telescope_builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', telescope_builtin.resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>s.', telescope_builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set('n', '<leader><leader>', telescope_builtin.buffers, { desc = '[ ] Find existing buffers' })

vim.keymap.set('n', '<leader>ch', vim.lsp.buf.hover, { desc = '[C]ode [H]over' })

vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = '[C]ode [A]ction' })

vim.keymap.set('n', '<leader>el', "0c$<Esc>", { desc = 'Empty Line' })
