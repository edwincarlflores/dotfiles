return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    local ibl = require("ibl")
    local highlight = {
      "CursorColumn",
      "Whitespace",
    }

    ibl.setup({
      scope = {
        show_start = false,
        show_end = false,
      },
      -- indent = { highlight = highlight, char = "" },
      -- whitespace = {
      -- highlight = highlight,
      -- remove_blankline_trail = false,
      -- },
      -- scope = { enabled = false },
    })
  end,
}
