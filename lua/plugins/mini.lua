local require_all = function(directory)
    -- Get the list of all .lua files in the specified directory
    -- Use 'lua/' .. directory .. '/*.lua' to search within the Neovim lua path
    local base = vim.fn.stdpath("config") .. "/lua/" .. directory
    local files = vim.fn.globpath(base, "*.lua", false, true)

    for _, file in ipairs(files) do
        -- Extract the filename without the path and extension
        -- e.g., ".../nvim/lua/mini/statusline.lua" -> "statusline"
        local module_name = vim.fn.fnamemodify(file, ':t:r')
        require(directory .. '.' .. module_name)
    end
end

return {
    'nvim-mini/mini.nvim',
    version = false,
    config = function ()
        require_all('plugins/mini')
    end
}
