local harpoon = require("harpoon")

harpoon:setup()

-- local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>m", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

for i = 1, 4 do
    vim.keymap.set("n", "<leader>" .. i, function() harpoon:list():select(i) end)
end

-- Toggle previous & next buffers stored within Harpoon list (the shortcuts don't work)
vim.keymap.set("n", "<Tab>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<S-Tab>", function() harpoon:list():next() end)

