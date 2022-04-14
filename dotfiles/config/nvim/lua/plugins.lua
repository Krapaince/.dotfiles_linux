-- {{@@ header() @@}}

return require('packer').startup({
  function(use)
    use('wbthomason/packer.nvim')

    -- Colorschemes
    use('tomasiser/vim-code-dark')
    -- use 'doums/darcula'
    use('kjwon15/vim-transparent')

    -- Icons
    use('kyazdani42/nvim-web-devicons')

    -- File Explorer
    use({
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
      config = require('plugins.nvim-tree'),
    })

    -- Status line
    use({ 'hoob3rt/lualine.nvim', config = require('plugins.lualine') })

    -- Treesitter
    use({
      {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = require('plugins.treesitter'),
      },
      'nvim-treesitter/playground',
    })

    -- {%@@ if profile != "krapaince_min" @@%}

    use({
      'neovim/nvim-lspconfig',
      requires = {
        { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' },
        'jose-elias-alvarez/null-ls.nvim',
        'jose-elias-alvarez/nvim-lsp-ts-utils',
        'simrat39/rust-tools.nvim',
      },
      config = require('plugins.lspconfig'),
    })

    -- Lsp progress
    use({ 'j-hui/fidget.nvim', config = require('plugins.fidget') })

    -- Lsp Diagnostics window
    use({
      'folke/lsp-trouble.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
      config = require('plugins.lsp-trouble'),
    })

    -- Autocompletion
    use({
      'hrsh7th/nvim-cmp',
      requires = {
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-vsnip',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-nvim-lsp',
        'onsails/lspkind-nvim',
      },
      config = require('plugins.cmp'),
    })

    use({ 'hrsh7th/vim-vsnip', config = require('plugins.vsnip') })

    -- Symbol tree
    use({ 'simrat39/symbols-outline.nvim', config = require('plugins.symbols-outline') })

    -- Finder
    use({
      'nvim-telescope/telescope.nvim',
      requires = {
        { 'nvim-lua/popup.nvim' },
        { 'nvim-lua/plenary.nvim' },
        { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
      },
      config = require('plugins.telescope'),
    })

    use({
      'iamcco/markdown-preview.nvim',
      run = function()
        vim.fn['mkdp#util#install']()
      end,
      ft = { 'markdown' },
    })

    use('nathom/filetype.nvim')

    -- {%@@ endif @@%}

    -- Utility plugins
    use({ 'ntpeters/vim-better-whitespace', config = require('plugins.vim-better-whitespace') }) -- Highlight trailing space
    use({ 'numToStr/Comment.nvim', config = require('plugins.comment') })
    -- {%@@ if profile != "krapaince_min" @@%}

    use({ 'norcalli/nvim-colorizer.lua', config = require('plugins.nvim-colorizer') }) -- Color highlighter
    use({ 'wesQ3/vim-windowswap' })
    use({ 'vim-scripts/DrawIt' })
    use({ 'junegunn/vim-easy-align' })

    use({
      'folke/todo-comments.nvim',
      requires = 'nvim-lua/plenary.nvim',
      config = require('plugins.todo-comments'),
    })
    -- git related plugins
    use({
      'lewis6991/gitsigns.nvim',
      config = require('plugins.gitsigns'),
      requires = {
        'nvim-lua/plenary.nvim',
      },
      tag = 'release',
    })

    use('tweekmonster/startuptime.vim')
    -- {%@@ endif @@%}
    --
  end,
  config = {
    display = {
      open_fn = require('packer.util').float,
    },
  },
})
