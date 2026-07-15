local vue_ls_path = vim.fn.expand("$MASON/packages/vue-language-server")
local vue_ts_plugin_location = vue_ls_path .. "/node_modules/@vue/language-server"

return {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
	root_markers = { "package.json", "tsconfig.json", "jsconfig.json" },
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = vue_ts_plugin_location,
				languages = { "javascript", "typescript", "vue" },
			},
		},
	},

	single_file_support = false,
}
