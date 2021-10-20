local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'xiyaowong/nvim-transparent'
  use 'lukas-reineke/indent-blankline.nvim'
  use {
      'nvim-treesitter/nvim-treesitter',
       run = ':TSUpdate'
  }
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/nvim-compe'
  use 'projekt0n/github-nvim-theme'
  use 'lewis6991/gitsigns.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'kyazdani42/nvim-web-devicons'
  use 'hoob3rt/lualine.nvim'
  use 'windwp/nvim-autopairs'
  use 'LnL7/vim-nix'
  use 'dag/vim-fish'
  use 'norcalli/nvim-colorizer.lua'
  use "folke/twilight.nvim"
  use 'nvim-lua/popup.nvim'
  use 'mfussenegger/nvim-dap'
  use 'alvarosevilla95/luatab.nvim'
  use 'romgrk/barbar.nvim'
  use 'yamatsum/nvim-cursorline'
end)
