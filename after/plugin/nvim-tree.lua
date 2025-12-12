require("nvim-tree").setup()

-- Toggle nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })

-- Open nvim-tree focused on the current file
vim.keymap.set("n", "<leader>fe", ":NvimTreeFindFileToggle<CR>", { desc = "Find File in Explorer" })

