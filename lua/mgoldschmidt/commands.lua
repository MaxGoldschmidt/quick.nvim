-- Jester
vim.api.nvim_create_user_command("JestCurrent", ":lua require('neotest').run.run(vim.fn.expand('%'))", { nargs = 0 })
vim.api.nvim_create_user_command("DebugNearest", ":lua require('neotest').run.run({strategy = 'dap'})", { nargs = 0 })
