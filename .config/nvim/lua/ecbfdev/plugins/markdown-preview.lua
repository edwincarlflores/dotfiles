return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
  config = function()
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>md", "<cmd>MarkdownPreview<cr>", { desc = "Open Markdown Preview" })
    keymap.set("n", "<leader>mdc", "<cmd>MarkdownPreviewStop<cr>", { desc = "Close Markdown Preview" })
  end,
}
