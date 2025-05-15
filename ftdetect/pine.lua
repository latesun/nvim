vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.pine",
	callback = function()
		vim.bo.filetype = "pine"
		vim.bo.commentstring = "// %s"
		vim.bo.expandtab = true
		vim.bo.shiftwidth = 4
		vim.bo.softtabstop = 4
		vim.cmd([[
			syntax match pineComment "//.*$"
			syntax keyword pineBoolean true false
			syntax keyword pineKeyword if else and or not na var float bool array color string type for
			syntax match pineVariable '\([a-zA-Z0-9_]\+\)\ze\s*:\?=\@='
			syntax match pineFunction '\([a-zA-Z0-9]\+\)\ze\s*('
			syntax match pineString '"[^"]*"'
			syntax match pinePackage '\([a-zA-Z]\+\)\.'
			syntax match pineConstant '\<[a-zA-Z0-9_]\+_\w*\>'

			highlight link pineComment Comment
			highlight link pineBoolean Boolean
			highlight link pineKeyword Keyword
			highlight link pineVariable Identifier
			highlight link pineFunction Function
			highlight link pineString String
			highlight link pinePackage Identifier
			highlight link pineConstant Constant
		]])
	end,
})
