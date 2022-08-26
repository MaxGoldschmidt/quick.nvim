local nnoremap = require("mgoldschmidt.keymap").nnoremap
local silent = { silent = true }

nnoremap("vs", ":vs<CR>")
nnoremap("sp", ":sp<CR>")
nnoremap("<C-L>", "<C-W><C-L>")
nnoremap("<C-H>", "<C-W><C-H>")
nnoremap("<C-K>", "<C-W><C-K>")
nnoremap("<C-J>", "<C-W><C-J>")
nnoremap("tn", ":tabnew<CR>")
nnoremap("tk", ":tabnext<CR>")
nnoremap("tj", ":tabprev<CR>")
nnoremap("to", ":tabo<CR>")
nnoremap("<C-S>", ":%s/")
nnoremap("<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", silent)
nnoremap("<leader>pv", ":NvimTreeToggle<CR>", silent)
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

-- jester
nnoremap("<leader>te", ":lua require'jester'.run()<CR>", silent)
nnoremap("<leader>de", ":lua require'jester'.debug()<CR>", silent)
nnoremap("<leader>br", ":lua require'dap'.toggle_breakpoint()<CR>", silent)
nnoremap("<leader>co", ":lua require'dap'.continue()<CR>", silent)
nnoremap("<leader>so", ":lua require'dap'.step_over()<CR>", silent)
nnoremap("<leader>si", ":lua require'dap'.step_into()<CR>", silent)
nnoremap("<leader>in", ":lua require'dap'.repl.open()<CR>", silent)

-- harpoon
nnoremap("<leader>a", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, silent)

nnoremap("<C-j>", function() require("harpoon.ui").nav_file(1) end, silent)
nnoremap("<C-k>", function() require("harpoon.ui").nav_file(2) end, silent)
nnoremap("<C-l>", function() require("harpoon.ui").nav_file(3) end, silent)
nnoremap("<C-;>", function() require("harpoon.ui").nav_file(4) end, silent)

-- lsp
nnoremap("<leader>f", ":LspZeroFormat<CR>", silent)
