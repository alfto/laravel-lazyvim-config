-- ~/.config/nvim/lua/plugins/cmp-keymaps.lua

return {
  {
    "saghen/blink.cmp", -- LazyVim uses Blink instead of nvim-cmp
    opts = function(_, opts)
      local cmp = require("blink.cmp")

      opts.keymap = {
        preset = "default",
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
      }

      return opts
    end,
  },
}
