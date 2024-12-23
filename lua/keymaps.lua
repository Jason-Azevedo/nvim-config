
-- vim 
vim.g.mapleader = " "

vim.keymap.set("i", "jj", "<esc>")


-- telescope
vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")
vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")

-- nvim.tree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")

-- bufferline
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")

-- markdown preview
vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<cr>")

-- comment toggle
vim.keymap.set({ "n", "v" }, "<leader>/", ":CommentToggle<cr>")

