return {
  {
    "mason-org/mason.nvim",
    cmd = "Mason",
    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
    build = ":MasonUpdate",
    opts = {
      ensure_installed = {
        -- PHP
        "phpactor",
        "intelephense",

        -- Frontend / CSS / Tailwind / HTML
        "tailwindcss-language-server",
        "css-lsp",
        "html-lsp",
        "json-lsp",

        -- JavaScript / TypeScript / Vue
        "typescript-language-server",
        "vue-language-server",

        -- Others
        "bash-language-server",
        "lua-language-server",
      },
    },
  },
}
