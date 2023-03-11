-- Leader is spacebar (empty-space)
vim.g.mapleader = " "

-- Keymaps
vim.keymap.set("n", "<C-r>", vim.cmd.Explore) -- Open NetRW
vim.keymap.set("n", "<C-w>", vim.cmd.write) -- Write file
vim.keymap.set("n", "<C-q>", vim.cmd.quitall) -- Close neovim

-- Keymaps - Plugins
-- See after/plugin/<plugin-name>
