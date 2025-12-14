local notify = require("notify")

notify.setup({
  background_colour = "#1e1e2e",  -- match your colorscheme background
  merge_duplicates = true,
})

vim.keymap.set("n", "<leader>nd", function()
    notify.dismiss({ silent = true, pending = true })
end, { desc = "Dismiss notifications" } )

