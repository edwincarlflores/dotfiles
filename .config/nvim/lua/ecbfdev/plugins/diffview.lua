return {
  "sindrets/diffview.nvim",
  config = function()
    local keymap = vim.keymap

    keymap.set("n", "<leader>dv", "<cmd>DiffviewOpen<CR>", { desc = "Open DiffView" })
    keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<CR>", { desc = "Close DiffView" })
  end,
}
