return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local gitsigns = require("gitsigns")

    gitsigns.setup({
      current_line_blame = true,
      current_line_blame_formatter = "<author>, <author_time:%R> (<author_time:%Y-%m-%d>) - <summary>",
      -- current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
    })
  end,
}
