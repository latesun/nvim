return {
	"stevearc/conform.nvim",
	opts = {
		formatters = {
			ruff = {
				command = "ruff",
				args = { "format", "--stdin-filename", "$FILENAME", "-" },
				stdin = true,
			},
		},
		formatters_by_ft = {
			html = { "prettier" },
			javascript = { "prettier" },
			json = { "prettier" },
			lua = { "stylua" },
			markdown = { "prettier" },
			python = { "ruff", "isort" },
			vue = { "prettier" },
			typescript = { "prettier" },
			yaml = { "prettier" },
		},
		format_on_save = {
			async = false,
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
