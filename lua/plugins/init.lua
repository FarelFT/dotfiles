return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- use {'rose-pine/neovim', config = "vim.cmd('colorscheme rose-pine')"}
  --  use {'arcticicestudio/nord-vim', config = "vim.cmd('colorscheme nord')"}
  use {'dracula/vim', config = "vim.cmd('colorscheme dracula')"}

  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate", event = "BufWinEnter", config = "require('treesitter-config')"}
  use {'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}, event = "BufWinEnter", config = "require('lualine-config')"}
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons', event = "BufWinEnter", config = "require('bufferline-config')"}
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
  use {'windwp/nvim-ts-autotag', event = "InsertEnter", after = "nvim-treesitter"}
  use {'p00f/nvim-ts-rainbow', after = "nvim-treesitter"}
  use {'windwp/nvim-autopairs', config = "require('autopairs-config')", after = "nvim-cmp"}
  use {'folke/which-key.nvim', event = "BufWinEnter", config = "require('whichkey-config')"}
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}, cmd = "Telescope", config = "require('telescope-config')"}

  use {'neovim/nvim-lspconfig', config = "require('lsp')"}
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'onsails/lspkind-nvim'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'David-Kunz/cmp-npm'

  use {'norcalli/nvim-colorizer.lua', config = "require('colorizer-config')", event = "BufRead"}
  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'},
    config = function()
      require('gitsigns').setup {current_line_blame = true}
    end
  }
  use {'glepnir/dashboard-nvim', config = "require('dashboard-config')"}
  use {"lukas-reineke/indent-blankline.nvim", config = "require('blankline-config')", event = "BufRead"}
  use {'lukas-reineke/format.nvim', config = "require('format-config')", cmd = "Format"}
  use {"akinsho/toggleterm.nvim", config = "require('toggleterm-config')"}
  use {"terrortylor/nvim-comment", config = "require('comment-config')", cmd = "CommentToggle"}
end)
