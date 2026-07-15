return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		filters = {
			dotfiles = true,
		},
	},
	config = function()
		require("nvim-tree").setup({})
	end,
}
