-- requires
local telscope = require('telescope.builtin')

-- Leader is spacebar (empty-space)
vim.g.mapleader = " "

-- Keymaps
vim.keymap.set("n", "<C-s>", vim.cmd.w) -- Write file
vim.keymap.set("n", "<C-q>", vim.cmd.q) -- Close neovim

-- Keymaps - Plugins
-- # Telescope - open on spacebar
vim.keymap.set("n", "<leader>t", telscope.git_files, {}) -- Find file (single-fuzzy)
vim.keymap.set("n", "<leader>", telscope.find_files, {}) -- Find files (global-fuzzy)
vim.keymap.set("n", "<leader>s", function() 
	telscope.grep_string({ search = vim.fn.input("grep > ") });
end)
