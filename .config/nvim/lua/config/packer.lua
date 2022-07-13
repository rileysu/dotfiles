require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'folke/lua-dev.nvim'
	use 'saadparwaiz1/cmp_luasnip'
	use 'L3MON4D3/LuaSnip'

	use 'folke/which-key.nvim'

	use {
		'kyazdani42/nvim-tree.lua',
    		requires = { 'kyazdani42/nvim-web-devicons' },
    		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

	use {
		'akinsho/bufferline.nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
		tag = 'v2.*'
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use 'folke/tokyonight.nvim'
end)
