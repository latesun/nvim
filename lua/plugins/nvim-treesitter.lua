return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		ensure_installed = { "bash", "json", "lua", "markdown", "python", "toml", "yaml" },
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		indent = {
			enable = true,
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })()
	end,
}
