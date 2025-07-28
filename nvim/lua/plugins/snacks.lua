return {
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        enabled = true,
        example = "github",
      },
      scroll = { enabled = false },
      picker = {
        ui_select = true,
        hidden = true,
        ignored = true,
        exclude = {
          ".git",
          "node_modules",
          "dist",
          ".next",
          ".turbo",
        },
        sources = {
          files = {
            hidden = true,
            ignored = true,
          },
        },
      },
    },
    keys = {
      {
        "<leader><space>",
        function()
          Snacks.picker.files()
        end,
        desc = "Find Files",
      },
    },
  },
}
