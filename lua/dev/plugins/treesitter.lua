return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		{ "nvim-treesitter/nvim-treesitter-textobjects" },
		{
			"nvim-treesitter/nvim-treesitter-context",
			opts = {
				enable = true,
				mode = "topline",
				line_numbers = true,
			},
		},
	},
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			ensure_installed = { "go", "c_sharp" },
		})

		require("nvim-treesitter").setup({
			ensure_installed = {
				"vimdoc",
				"javascript",
				"typescript",
				"c",
				"lua",
				"csv",
				"dockerfile",
				"gitignore",
				"gomod",
				"gosum",
				"gowork",
				"jsdoc",
				"bash",
				"go",
				"c_sharp",
				"markdown",
				"markdown_inline",
				"json",
				"yaml",
				"rego",
				"ruby",
				"sql",
				"html",
			},
			auto_install = true,
			ident = {
				enable = true,
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
				},
			},
		})
	end,
}
