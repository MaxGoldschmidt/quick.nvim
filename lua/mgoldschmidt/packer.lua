return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'folke/tokyonight.nvim'
  use("nvim-treesitter/nvim-treesitter", {
    run = ":TSUpdate"
  })
  use 'tpope/vim-commentary'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'lukas-reineke/indent-blankline.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use {
    "ur4ltz/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  }
  use("ThePrimeagen/git-worktree.nvim")
  use("othree/html5.vim")
  use("pangloss/vim-javascript")
  use{
    "evanleck/vim-svelte",
    branch = "main"
  }
  use("github/copilot.vim")
  use("tpope/vim-fugitive")
  use("mfussenegger/nvim-dap")
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use("David-Kunz/jester")
  use("ThePrimeagen/harpoon")
end)
