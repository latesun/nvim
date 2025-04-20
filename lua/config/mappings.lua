local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<leader>w", "<cmd> w <CR><ESC>")
map({ "n", "i", "v" }, "<leader>wa", "<cmd> wa <CR><ESC>")
map("n", "<leader>l", "<cmd> Lazy <CR>")
map("n", "<leader>m", "<cmd> Mason <CR>")
map("n", "<leader>k", "<cmd> Interestingwords --toggle <CR>")
map("n", "<leader>K", "<cmd> Interestingwords --remove_all <CR>")
map("n", "<leader>e", "<cmd> NvimTreeToggle <CR>")
