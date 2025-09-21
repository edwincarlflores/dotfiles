return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod", lazy = true },
    { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
  },
  -- cmd = {
  --   "DBUI",
  --   "DBUIToggle",
  --   "DBUIAddConnection",
  --   "DBUIFindBuffer",
  -- },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
  end,
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness
    -- keymap.set("n", "<leader>db", "<cmd>DBUIToggle<cr>", { desc = "Open/close DB UI" })
  end,
}
