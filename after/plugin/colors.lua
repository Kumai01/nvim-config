function ColorMyPencils(color)
	color = color or "tokyonight-storm"
    vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "Visual", { bg = "#5c6370", fg = "#ffffff", bold = true })
end

ColorMyPencils()

