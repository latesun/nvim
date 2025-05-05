return {
	"lewis6991/gitsigns.nvim",
	lazy = false,
	config = function()
		require("gitsigns").setup({
			signs = {
				add = { text = "A" },
				change = { text = "M" },
				delete = { text = "D" },
				topdelete = { text = "D" },
				changedelete = { text = "D" },
				untracked = { text = "U" },
			},
			signs_staged = {
				add = { text = "A" },
				change = { text = "M" },
				delete = { text = "D" },
				topdelete = { text = "D" },
				changedelete = { text = "D" },
				untracked = { text = "U" },
			},
			current_line_blame = true,
		})
	end,
}
