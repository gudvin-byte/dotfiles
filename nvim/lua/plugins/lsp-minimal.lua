return {
  {
    "williamboman/mason.nvim",
    version = "*", -- Use latest version
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    version = "*", -- Use latest version
    dependencies = {
      "williamboman/mason.nvim",
    },
    opts = {
      automatic_installation = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("lspconfig").marksman.setup({})
      require("lspconfig").pyright.setup({})
    end,
  },
}
