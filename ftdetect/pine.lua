vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.pine",
	callback = function()
		vim.bo.filetype = "pine"
		vim.cmd([[
			syntax match pineComment "//.*$"
			syntax keyword pineBoolean true false
			syntax keyword pineKeyword and or not
			syntax match pineVariable '\([a-zA-Z0-9]\+\)\ze\s*='
			syntax match pineFunction '\([a-zA-Z0-9]\+\)\ze\s*('
			syntax match pineString '"[^"]*"'
			syntax match pinePackage '\([a-zA-Z]\+\)\.'

			highlight link pineComment Comment
			highlight link pineBoolean Boolean
			highlight link pineKeyword Keyword
			highlight link pineVariable Identifier
			highlight link pineFunction Function
			highlight link pineString String
			highlight link pinePackage Identifier
		]])
	end,
})
