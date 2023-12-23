-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
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

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    if packer_bootstrap then
        require('packer').sync()
    end
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Themes theme
    use ({
        -- "eddyekofo94/gruvbox-flat.nvim", -- Gruvbox
        -- "sainnhe/gruvbox-material", -- Gruvbox material
        -- "rose-pine/neovim", -- Rose-Pine
        -- "EdenEast/nightfox.nvim",  -- Nightfox
        -- "AlexvZyl/nordic.nvim", -- Nord
        "rebelot/kanagawa.nvim", -- Kanagawa

        config = function()
            vim.background = "wave"
            vim.cmd([[colorscheme kanagawa-dragon]])
            vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])
            vim.cmd([[highlight NormalNC guibg=NONE ctermbg=NONE]])
        end
    })

    -- Himalaya
    -- use('https://git.sr.ht/~soywod/himalaya-vim')

    -- Align
    use('junegunn/vim-easy-align')

    -- Treesitter
    use ({ 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} })
    use ('peterhoeg/vim-qml')

    -- Git suuport
    use ('tpope/vim-fugitive')
    use ('junegunn/gv.vim')

    -- LSP support
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    -- Hex editor
    use ( 'RaafatTurki/hex.nvim' )

    -- Neogen doxygen support
    use {
        "danymat/neogen",
        requires = "nvim-treesitter/nvim-treesitter",
        -- Uncomment next line if you want to follow only stable versions
        -- tag = "*"
    }

    -- Debugger (DAP) with UI
    use {
        "rcarriga/nvim-dap-ui",
        requires = {"mfussenegger/nvim-dap"}
    }

    -- Undotree
    use("mbbill/undotree")
end)
