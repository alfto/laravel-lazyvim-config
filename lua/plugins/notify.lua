return {
  {
    "rcarriga/nvim-notify",
    version = "v3.15.0", -- latest tag at time of check; safe to omit if you prefer rolling
    opts = {
      stages = "fade_in_slide_out",
      timeout = 3000,
    },
    config = function(_, opts)
      local notify = require("notify")
      notify.setup(opts)
      vim.notify = notify
    end,
  },
}
