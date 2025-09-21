return {
  "folke/trouble.nvim",
  opts = {
    -- auto_close = true,
    focus = true,
    pinned = true,
  },
  dependencies = "nvim-tree/nvim-web-devicons",
  cmd = "Trouble",
  keys = {
    {
      "<leader>tw",
      "<cmd>Trouble diagnostics toggle focus=true<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>td",
      "<cmd>Trouble diagnostics toggle focus=true filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>tt",
      "<cmd>Trouble toggle<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>tl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
  },
  -- config = function()
  --   local keymap = vim.keymap
  --
  --   keymap.set("n", "<leader>tt", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
  --   keymap.set("n", "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true })
  --   keymap.set("n", "<leader>td", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
  --   keymap.set("n", "<leader>tl", "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true })
  --   keymap.set("n", "<leader>tq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
  --   keymap.set("n", "<leader>tr", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })
  --   keymap.set("n", "<leader>th", "<cmd>Trouble<cr>", { silent = true, noremap = true })
  --   -- keymap.set("n", "<leader>th", "<cmd>lua require('trouble').focus()<cr>", { silent = true, noremap = true })
  -- end,
}
