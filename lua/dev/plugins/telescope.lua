return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			enable = true,
		},
		{
			"nvim-telescope/telescope-file-browser.nvim",
			enable = true,
		},
	},
	branch = "0.1.x",
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		telescope.load_extension("fzf")
		telescope.load_extension("file_browser")

		telescope.setup({
			extensions = {
				file_browser = {
					hidden = true,
				},
			},
		})

		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>vh", builtin.help_tags, { desc = "Telescope help tags" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })

		vim.keymap.set("n", "<leader>pw", function()
			builtin.grep_string({ search = vim.fn.expand("<cword>") })
		end, { desc = "Telescope grep word under cursor" })

		vim.keymap.set("n", "<leader>pW", function()
			builtin.grep_string({ search = vim.fn.expand("<cWORD>") })
		end, { desc = "Telescope grep WORD under cursor" })
	end,
}
