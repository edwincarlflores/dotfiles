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

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>", { desc = "Stage hunk" })
    keymap.set("n", "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<cr>", { desc = "Undo stage hunk" })
    keymap.set("n", "<leader>gh", "<cmd>Gitsigns preview_hunk_inline<cr>", { desc = "Preview hunk" })
    keymap.set("n", "<leader>gn", "<cmd>Gitsigns prev_hunk<cr>", { desc = "Previous hunk" })
    keymap.set("n", "<leader>gb", "<cmd>Gitsigns next_hunk<cr>", { desc = "Next hunk" })
    keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", { desc = "Reset hunk" })
  end,
}
