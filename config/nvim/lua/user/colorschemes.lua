local M = {
	"ellisonleao/gruvbox.nvim",
	priority = 100,
	lazy = false
}



M.name = "gruvbox"

function M.config()
	require("gruvbox").setup({
		transparent_mode = true,
		contrast = "hard"
	})
	local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
	if not status_ok then
		return
	end
end

return M
