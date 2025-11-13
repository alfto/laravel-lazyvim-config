return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    keys = {
      { "<leader>fe", "<cmd>Neotree toggle<cr>", desc = "NeoTree Toggle" },
      { "<leader>fr", "<cmd>Neotree reveal<cr>", desc = "NeoTree Reveal File" },
    },
    config = function()
      require("neo-tree").setup({
        filesystem = { follow_current_file = true, use_libuv_file_watcher = true },
        window = { mappings = { ["l"] = "open", ["h"] = "close_node" } },
      })
    end,
  },
}
