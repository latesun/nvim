return {
	cmd = { "pylsp" },
	filetypes = { "python" },
	root_markers = {
		"setup.py",
		".git",
	},
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = { maxLineLength = 88 },
			},
		},
	},
}
