return {
    "ellisonleao/gruvbox.nvim",
    config = function()
        require("gruvbox").setup({
            terminal_colors = true, -- add neovim terminal colors
            contrast = "hard",
            transparent_mode = true,
        })
        vim.cmd.colorscheme("gruvbox")
    end,
}
