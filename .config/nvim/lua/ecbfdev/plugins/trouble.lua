return {
  "folke/trouble.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local keymap = vim.keymap

    keymap.set("n", "<leader>tt", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
    keymap.set("n", "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true })
    keymap.set("n", "<leader>td", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
    keymap.set("n", "<leader>tl", "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true })
    keymap.set("n", "<leader>tq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
    keymap.set("n", "<leader>tr", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })
    keymap.set("n", "<leader>th", "<cmd>Trouble<cr>", { silent = true, noremap = true })
  end,
}
