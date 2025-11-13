return {
  {
    "NvChad/nvim-colorizer.lua",
    event = "VeryLazy",
    opts = {
      user_default_options = {
        tailwind = true,       -- ✅ enables TailwindCSS color highlighting
        css = true,            -- highlights CSS colors (#fff, rgb(), etc.)
        css_fn = true,         -- enables functions like rgb(), hsl()
        names = false,         -- don’t color named colors like “red”
        mode = "background",   -- use background color boxes (alternatives: 'foreground', 'virtualtext')
      },
      filetypes = {
        "css",
        "scss",
        "html",
        "javascript",
        "typescript",
        "blade",
        "vue",
        "php",
      },
    },
  },
}
