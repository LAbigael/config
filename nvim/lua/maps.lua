vim.g.mapleader = " "

vim.keymap.set("n", "<leader>.", vim.cmd.Ex)
-- paste selected and put it o void
vim.keymap.set("x", "<leader>p", "\"_dP")
-- usee system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>fp", "<cmd>e ~/.config/nvim/<CR>");

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
