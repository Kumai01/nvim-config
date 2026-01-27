local harpoon = require("harpoon")

harpoon:setup()

-- local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, {desc="add file to harpoon list"})
vim.keymap.set("n", "<leader>m", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc="add file to harpoon list"})

for i = 1, 4 do
    vim.keymap.set("n", "<leader>" .. i, function() harpoon:list():select(i) end, {desc="go to file in harpoon list"})
end

-- Toggle previous & next buffers stored within Harpoon list 
vim.keymap.set("n", "<leader><Tab>", function() harpoon:list():prev() end, {desc="go to previous file in harpoon list"})
vim.keymap.set("n", "<leader><S-Tab>", function() harpoon:list():next() end, {desc="go to next file in harpoon list"})

