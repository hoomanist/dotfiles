local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])


return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'morhetz/gruvbox'
    use {'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use { "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use { 'neovim/nvim-lspconfig' }
    use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}
use 'ThePrimeagen/vim-be-good'
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
    if packer_bootstrap then
        require('packer').sync()
    end
end)

