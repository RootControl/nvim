return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        require("nvim-treesitter").setup({
            ensure_installed = {
                "vimdoc", "javascript", "typescript", "c", "lua",
                "jsdoc", "bash", "go", "c_sharp", "markdown", "markdown_inline",
            },
            auto_install = true,
            ident = {
                enable = true,
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { "markdown" },
            }

        })
    end,
}
