return {
    "folke/trouble.nvim",
    config = function()
        vim.keymap.set("n", "<leader>tt", function()
            require("trouble").toggle({ mode = 'diagnostics' });
        end)
    end
}
