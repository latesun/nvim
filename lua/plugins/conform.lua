return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			markdown = { "mdslw" },
		},
		format_on_save = {
			async = false,
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
