return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		vim.o.termguicolors = true
		vim.cmd([[colorscheme tokyonight-moon]])
	end,
}
