return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  enabled = false,
  opts = {
    options = {
      offsets = {
        {
          filetype = "NvimTree",
          text = "",
          separator = true,
          text_align = "left",
        },
      },
      -- mode = "tabs",
      -- separator_style = "slant",
      separator_style = "thin",
    },
  },
}
