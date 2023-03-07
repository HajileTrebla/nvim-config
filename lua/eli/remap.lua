vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--indent insert
vim.keymap.set("i", "<Tab>", "<C-t>")
vim.keymap.set("i", "<S-Tab>", "<C-d>")

--screen
vim.keymap.set("n", "ss", ":split<Return> <C-w>w")
vim.keymap.set("n", "sv", ":vsplit<Return> <C-w>w")

--screen swap
vim.keymap.set("n", "<Space>", "<C-w>w")
vim.keymap.set("n", "s<left>", "<C-w>h")
vim.keymap.set("n", "s<left>", "<C-w>k")
vim.keymap.set("n", "s<left>", "<C-w>j")
vim.keymap.set("n", "s<left>", "<C-w>l")
vim.keymap.set("n", "sh", "<C-w>h")
vim.keymap.set("n", "sk", "<C-w>k")
vim.keymap.set("n", "sj", "<C-w>j")
vim.keymap.set("n", "sl", "<C-w>l")

--behave
vim.keymap.set("n", "Y", "y$")

--refractor
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left>")


--paste void buffer
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("v", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>p", "\"_dP")

--centered search
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-j>", ":cnext<CR>zzzv")

--undo breakpoints
vim.keymap.set("i", ",", ",<C-g>u")
vim.keymap.set("i", ".", ".<C-g>u")
vim.keymap.set("i", "!", "!<C-g>u")
vim.keymap.set("i", "?", "?<C-g>u")

--jumplist mutations
--vim.keymap.set("n", "<expr> k", "(v:count > 5 ? "m'" .v:count :"") . 'k'")
--vim.keymap.set("n", "<expr> j", "(v:count > 5 ? "m'" .v:count :"") . 'j'") 

--move text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("i", "<C-j>", "<esc>:m .+1<CR>==")
vim.keymap.set("i", "<C-k>", "<esc>:m .-2<CR>==")
vim.keymap.set("n", "<leader>j", ":m .+1<CR>==")
vim.keymap.set("n", "<leader>k", ":m .-2<CR>==")

--move cursor
vim.keymap.set("n", "<leader>ll", "$")
vim.keymap.set("n", "<leader>hh", "0")

--savior
vim.keymap.set("n", "Q", "<nop>")

--switchproj
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

--bash execs
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true})
vim.keymap.set("n", "<leader>ts", "<cmd>!tsc<CR>", {silent = true})
vim.keymap.set("n", "<leader>tf", "<cmd>!tsc %<CR>", {silent = true})
vim.keymap.set("n", "<leader>tn", "<cmd>!ts-node %<CR>", {silent = true})

