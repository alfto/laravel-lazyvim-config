return {
  {
    "stevearc/overseer.nvim",
    cmd = { "OverseerRun", "OverseerTask" },
    config = function()
      require("overseer").setup({
        strategy = { "toggleterm" },
      })
    end,
    keys = {
      { "<leader>ot", "<cmd>OverseerToggle<cr>", desc = "Toggle Overseer" },
      { "<leader>or", "<cmd>OverseerRun<cr>", desc = "Run Task (Overseer)" },
    },
  },
}
