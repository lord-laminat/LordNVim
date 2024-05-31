local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.syste({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
    -- HOP
  { "phaazon/hop.nvim" },

  -- NEO-TREE
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },

  -- TREESITTER & LSP
  { "nvim-treesitter/nvim-treesitter" },
  { "neovim/nvim-lspconfig" },

  -- Colorthemes
  { "RRethy/base16-nvim" },

  -- CMP-autocomplite
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { "hrsh7th/nvim-cmp" },

  -- LAS servers installator
  { "williamboman/mason.nvim", build=":MasonUpdate" },

  -- TELESCOPE
  { "nvim-telescope/telescope.nvim", tag="0.1.4", dependencies={'nvim-lua/plenary.nvim'} },

  -- FORMATING
  {'jose-elias-alvarez/null-ls.nvim'},
  { 'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
  {"akinsho/bufferline.nvim", dependencies = {'nvim-tree/nvim-web-devicons'}},

})
