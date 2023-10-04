return {
	"linux-cultist/venv-selector.nvim",
	dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
	opts = {},
	event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
	keys = {{
		"<leader>vs", "<cmd>:VenvSelect<cr>",
		"<leader>vc", "<cmd>:VenvSelectCached<cr>"
	}}
}
