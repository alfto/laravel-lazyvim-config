return {
  {
    "roobert/tailwindcss-colorizer-cmp.nvim",
    dependencies = { "hrsh7th/nvim-cmp" },
    event = "InsertEnter", -- ensures nvim-cmp is loaded first
    config = function()
      local ok_cmp, cmp = pcall(require, "cmp")
      if not ok_cmp then
        vim.schedule(function()
          vim.notify("tailwindcss-colorizer-cmp: nvim-cmp not loaded yet, retrying...")
        end)
        return
      end

      local ok_colorizer, colorizer = pcall(require, "tailwindcss-colorizer-cmp")
      if not ok_colorizer then
        vim.notify("Failed to load tailwindcss-colorizer-cmp")
        return
      end

      colorizer.setup({
        color_square_width = 2,
      })

      local format_kinds = cmp.config.formatting.format
      cmp.setup({
        formatting = {
          format = colorizer.formatter(format_kinds),
        },
      })
    end,
  },
}

