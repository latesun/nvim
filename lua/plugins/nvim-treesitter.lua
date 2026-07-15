return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	opts = {
		ensure_installed = { "bash", "go", "json", "lua", "markdown", "python", "toml", "yaml" },
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		indent = {
			enable = true,
		},
	},
}
