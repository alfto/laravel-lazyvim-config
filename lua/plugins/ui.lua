return {
  -- Catppuccin theme (mocha flavor)
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = { flavour = "mocha" }, -- set mocha flavor
  },
  -- The LazyVim plugin needs its colorscheme option updated to "catppuccin"
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "catppuccin" },
  },

  -- Harpoon (file bookmarking/navigation by the Primeagen)
  { "ThePrimeagen/harpoon" },

  -- (Optional) Auto-close brackets/quotes
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },
}
