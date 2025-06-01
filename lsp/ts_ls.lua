return {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
	root_markers = {
		"package.json",
		".git",
	},
	settings = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = "~/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server",
				languages = { "javascript", "typescript", "vue" },
			},
		},
	},
}
