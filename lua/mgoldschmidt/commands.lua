-- Jester
vim.api.nvim_create_user_command("JestCurrent", ":lua require'jester'.run_file()", { nargs = 0 })
vim.api.nvim_create_user_command("JestLast", ":lua require'jester'.run_last()", { nargs = 0 })
vim.api.nvim_create_user_command("DebugCurrent", ":lua require'jester'.debug_file()", { nargs = 0 })
vim.api.nvim_create_user_command("DebugLast", ":lua require'jester'.debug_last()", { nargs = 0 })
