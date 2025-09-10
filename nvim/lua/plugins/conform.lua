return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- Extend existing formatters
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.css = { "prettier" }
      opts.formatters_by_ft.scss = { "prettier" }
      opts.formatters_by_ft.sass = { "prettier" }
      opts.formatters_by_ft.less = { "prettier" }
      opts.formatters_by_ft.astro = { "prettier" }

      opts.formatters_by_ft.nginx = { "nginxfmt" }

      --
      opts.formatters.prettier.command = "prettier"
      opts.formatters.prettier.args = { "--stdin-filepath", "$FILENAME" }
      opts.formatters.prettier.cwd = require("conform.util").root_file({
        ".prettierrc",
        "prettier.config.ts",
        ".prettierrc.json",
        ".prettierrc.js",
        "package.json",
      })

      return opts
    end,
  },
}
