return {
  {
    "kylechui/nvim-surround",
    version = "*", -- uses latest release (checked: v3.1.7 recently)
    event = "VeryLazy",
    config = function() require("nvim-surround").setup() end,
  },
}
