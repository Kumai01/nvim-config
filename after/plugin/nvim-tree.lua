-- close after opening the file
local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<CR>', function ()
      local node = api.tree.get_node_under_cursor()

      if node.type == "directory" then
          api.node.open.edit()
      else
          api.node.open.preview()
          api.tree.close()
      end
  end,
  opts('open and close'))
end

require("nvim-tree").setup {
    --- 
    on_attach = my_on_attach
    ---
}

-- Toggle nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeOpen<CR>", { desc = "Toggle File Explorer" })

-- Open nvim-tree focused on the current file
vim.keymap.set("n", "<leader>fe", ":NvimTreeFindFile<CR>", { desc = "Find File in Explorer" })
