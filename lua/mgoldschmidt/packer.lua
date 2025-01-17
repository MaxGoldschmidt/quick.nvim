---@diagnostic disable-next-line: different-requires
return require("packer").startup(function()
  use "wbthomason/packer.nvim"
  use "folke/tokyonight.nvim"
  use("nvim-treesitter/nvim-treesitter", {
    run = ":TSUpdate"
  })
  use "tpope/vim-commentary"
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "lukas-reineke/indent-blankline.nvim"
  use {
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } }
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use { "nvim-telescope/telescope-fzy-native.nvim" }
  use {
    "ur4ltz/surround.nvim",
    config = function()
      require "surround".setup { mappings_style = "surround" }
    end
  }
  use("ThePrimeagen/git-worktree.nvim")
  use("othree/html5.vim")
  use("pangloss/vim-javascript")
  use {
    "evanleck/vim-svelte",
    branch = "main"
  }
  use("github/copilot.vim")
  use("tpope/vim-fugitive")
  use("mfussenegger/nvim-dap")
  use {
    "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons", -- optional, for file icons
    },
    tag = "nightly" -- optional, updated every week. (see issue #1193)
  }
  use("ThePrimeagen/harpoon")
  use { "catppuccin/nvim", as = "catppuccin" }
  use { "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" }
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }
  use {
    'lewis6991/spellsitter.nvim',
    config = function()
      require('spellsitter').setup {
        enable = true
      }
    end
  }
  use("windwp/nvim-ts-autotag")
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
  use {
    "nvim-neotest/neotest",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-neotest/neotest-python",
      "nvim-neotest/neotest-plenary",
      "nvim-neotest/neotest-go",
      "haydenmeade/neotest-jest",
      "nvim-neotest/neotest-vim-test",
    },
  }
  use {
    "folke/which-key.nvim",
  }
end)
