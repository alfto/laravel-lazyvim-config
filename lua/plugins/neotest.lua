return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      -- adapters; add/remove as you need:
      "olimorris/neotest-phpunit",   -- phpunit adapter
      "nvim-neotest/neotest-plenary", -- for plenary tests
      "nvim-neotest/neotest-jest",   -- for JS projects (optional)
    },
    cmd = { "Neotest" },
    config = function()
      local adapters = {}
      -- load adapters only if available
      pcall(function() table.insert(adapters, require("neotest-phpunit")) end)
      pcall(function() table.insert(adapters, require("neotest-plenary")) end)
      pcall(function() table.insert(adapters, require("neotest-jest")) end)

      require("neotest").setup({
        adapters = adapters,
      })
    end,
  },
}
