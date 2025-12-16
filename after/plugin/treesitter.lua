require'nvim-treesitter'.setup{
    -- Directory to install parsers and queries to
    install_dir = vim.fn.stdpath('data') .. '/site'
}

-- languages
require'nvim-treesitter'.install { 'python', 'fsharp', 'java', 'cpp', 'lua' }

-- filetypes
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'py', 'cpp', 'java', 'fs' },
  callback = function() vim.treesitter.start() end,
})

-- folds
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.wo.foldmethod = 'expr'

-- indentation
vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
