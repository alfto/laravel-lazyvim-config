return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    keys = { { "<leader>fb", "<cmd>Telescope file_browser<cr>", desc = "Telescope File Browser" } },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
  },
}
