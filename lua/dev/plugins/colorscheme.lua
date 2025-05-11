function ColorThisNuts(color)
    color = color or "habamax"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	"folke/tokyonight.nvim",
    name = 'tokyonight',
	lazy = false, 

    opts = {},

    config = function()
        ColorThisNuts()
    end
}
