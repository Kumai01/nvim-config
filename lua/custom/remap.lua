vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "kj", "<ESC>")
vim.keymap.set("v", "kj", "<ESC>")


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- save
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>W", ":wa<CR>")

-- quit
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>z", ":wq<CR>")

-- splitting
vim.keymap.set("n", "<leader>-", ":sp<CR>")
vim.keymap.set("n", "<leader>|", ":vsp<CR>")

-- open terminal
vim.keymap.set("n", "<leader>tt", ":botright split | terminal<CR>")

---------

-- cursor stays 
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in the middle when moving
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- copying to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- quick fix navigation (searching and so)
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")

-- change all occurences
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make the file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<F5>", function()
  local ft = vim.bo.filetype
  if ft == "python" then
    vim.cmd("w | :term python3 %")
  elseif ft == "c" then
    vim.cmd("w | :term gcc % -o %:r && ./%:r")
  elseif ft == "cpp" then
    vim.cmd("w | :term g++ % -o %:r && ./%:r")
  elseif ft == "java" then
    vim.cmd("w | :term javac % && java %:r")
  end
end)
