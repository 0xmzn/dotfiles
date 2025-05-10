return {
    "ellisonleao/gruvbox.nvim",
    config = function()
        require("gruvbox").setup({
            transparent_mode = true,
            terminal_colors = true,
            contrast = "hard",
        })
        vim.cmd.colorscheme("gruvbox")
    end,
}

