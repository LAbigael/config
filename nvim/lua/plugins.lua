vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
   -- Packer can manage itself
   use 'wbthomason/packer.nvim'

   -- Fuzzy finder
   use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = { { 'nvim-lua/plenary.nvim' } }
   }

   -- Color scheme
   use({
      'rose-pine/neovim',
      as = 'rose-pine',
      config = function()
         require("rose-pine").setup()
         vim.cmd('colorscheme rose-pine')
      end
   })
   use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
   }
   use 'mbbill/undotree'
   use 'tpope/vim-fugitive'

   use 'tpope/vim-commentary'
   use 'tpope/vim-surround'

   use 'lewis6991/gitsigns.nvim'
   use 'dinhhuy258/git.nvim' -- For git blame & browse

   use "folke/zen-mode.nvim"

   -- Everything lsp
   use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
         -- LSP Support
         { 'neovim/nvim-lspconfig' }, -- Required
         { 'williamboman/mason.nvim' }, -- Optional
         { 'williamboman/mason-lspconfig.nvim' }, -- Optional

         -- Autocompletion
         { 'hrsh7th/nvim-cmp' }, -- Required
         { 'hrsh7th/cmp-nvim-lsp' }, -- Required
         { 'hrsh7th/cmp-buffer' }, -- Optional
         { 'hrsh7th/cmp-path' }, -- Optional
         { 'saadparwaiz1/cmp_luasnip' }, -- Optional
         { 'hrsh7th/cmp-nvim-lua' }, -- Optional

         -- Snippets
         { 'L3MON4D3/LuaSnip' }, -- Required
         { 'rafamadriz/friendly-snippets' }, -- Optional
      }
   }
   use 'jose-elias-alvarez/null-ls.nvim'
   use 'MunifTanjim/prettier.nvim'

end)
