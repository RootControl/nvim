return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = function ()
            require("toggleterm").setup({
                open_mapping = [[<M-i>]], -- Default mapping for floating terminal
                direction = "float",
            })

            -- Key mappings
            vim.keymap.set("n", "<M-h>", function()
                require("toggleterm").toggle(1, nil, nil, "horizontal")
            end, { desc = "Open horizontal terminal" })

            vim.keymap.set("n", "<M-v>", function()
                require("toggleterm").toggle(2, nil, nil, "vertical")
            end, { desc = "Open vertical terminal" })

            vim.keymap.set("n", "<M-i>", function()
                require("toggleterm").toggle(3, nil, nil, "float")
            end, { desc = "Open floating terminal" })

        end
    },
}
