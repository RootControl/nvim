-- normal mode keymaps
vim.keymap.set("n", ";", ":")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)


vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")



-- view mode keymaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move select txt down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move select txt up" })



-- golang custom keymaps
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>",
    { desc = "If condition to check and return error" }
)

vim.keymap.set(
    "n",
    "<leader>ef",
    "oif err != nil {<CR>}<Esc>Olog.Fatalf(\"error: %s\\n\", err.Error())<Esc>jj",
    { desc = "If condition to check and log.Fatal error" }
)

vim.keymap.set(
    "n",
    "<leader>el",
    "oif err != nil {<CR>}<Esc>O.logger.Error(\"error\", \"error\", err)<Esc>F.;i",
    { desc = "If condition to check and return error" }
)
