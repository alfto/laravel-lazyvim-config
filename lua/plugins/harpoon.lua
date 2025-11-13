return {
  {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      -- Add current file to Harpoon
      vim.keymap.set("n", "<leader>ha", mark.add_file, { desc = "Harpoon: Add File" })

      -- Remove current file from Harpoon
      vim.keymap.set("n", "<leader>hr", mark.rm_file, { desc = "Harpoon: Remove File" })

      -- Open Harpoon menu
      vim.keymap.set("n", "<leader>hm", ui.toggle_quick_menu, { desc = "Harpoon: Toggle Menu" })

      -- Jump directly to files 1–6
      vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end, { desc = "Harpoon: Jump File 1" })
      vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end, { desc = "Harpoon: Jump File 2" })
      vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end, { desc = "Harpoon: Jump File 3" })
      vim.keymap.set("n", "<leader>h4", function() ui.nav_file(4) end, { desc = "Harpoon: Jump File 4" })
      vim.keymap.set("n", "<leader>h5", function() ui.nav_file(5) end, { desc = "Harpoon: Jump File 5" })
      vim.keymap.set("n", "<leader>h6", function() ui.nav_file(6) end, { desc = "Harpoon: Jump File 6" })

      -- Navigate next/previous marked file
      vim.keymap.set("n", "<leader>hn", ui.nav_next, { desc = "Harpoon: Next File" })
      vim.keymap.set("n", "<leader>hp", ui.nav_prev, { desc = "Harpoon: Previous File" })
    end,
  },
}

