local builtin = require('telescope.builtin')

-- # Telescope - open on spacebar
vim.keymap.set("n", "<leader>t", builtin.git_files, {}) -- Find file (single-fuzzy)
vim.keymap.set("n", "<leader>", builtin.find_files, {}) -- Find files (global-fuzzy)
vim.keymap.set("n", "<leader>s", function() 
	builtin.grep_string({ search = vim.fn.input("grep > ") });
end)
