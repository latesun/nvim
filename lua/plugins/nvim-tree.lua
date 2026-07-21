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
		view = {
			width = 40, -- 默认是 30，调大即可
		},
	},
	config = function()
		require("nvim-tree").setup({})
	end,
}
