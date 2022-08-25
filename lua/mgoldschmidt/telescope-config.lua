local telescope = require("telescope")
local previewers = require("telescope.previewers") 

telescope.setup{
  defaults = {
    file_sorter = require("telescope.sorters").get_fzy_sorter,
		prompt_prefix = " >",
		color_devicons = true,

		file_previewer = previewers.vim_buffer_cat.new,
		grep_previewer = previewers.vim_buffer_vimgrep.new,
		qflist_previewer = previewers.vim_buffer_qflist.new,
    file_ignore_patterns = { "node_modules" }
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true
    }
  }
}

telescope.load_extension("file_browser")
telescope.load_extension("git_worktree")
telescope.load_extension('fzy_native')


vim.api.nvim_set_keymap('n', '<C-P>', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-N>', ":Telescope file_browser<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-F>', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-B>', "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-T>', "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", { noremap = true })
