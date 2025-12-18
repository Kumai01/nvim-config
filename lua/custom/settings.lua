-- vim.opt.clipboard = "unnamedplus" -- the p command will take directly from "+ register

vim.opt.nu = true
vim.opt.relativenumber = true
vim.api.nvim_create_autocmd("InsertEnter", { command = [[set norelativenumber]] })
vim.api.nvim_create_autocmd("InsertLeave", { command = [[set relativenumber]] }) 

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent= true

vim.opt.wrap = false -- use :set wrap to enable


-- to save undos as a file
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- use this command to search for one word using /
-- vim.opt.hlsearch = false
-- vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- autosave
-- vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  -- pattern = "*",
  -- callback = function()
    -- only normal writable buffers
    -- if vim.bo.modifiable and vim.bo.filetype ~= "" and vim.bo.buftype == "" and vim.bo.modified then
    --  vim.cmd("silent! write")
   -- end
--  end,
--})

-- Ex will default to tree view
vim.g.netrw_liststyle = 3


-- folds
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.wo.foldmethod = 'expr'
vim.wo.foldlevel = 99  -- open all folds by default

-- indentation
vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

