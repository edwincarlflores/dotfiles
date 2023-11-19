return {
  "rmagatti/goto-preview",
  config = function()
    require("goto-preview").setup({})

    local keymap = vim.keymap

    keymap.set("n", "gpd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })
    keymap.set("n", "gpr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", { noremap = true })
    keymap.set("n", "gpi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", { noremap = true })
    keymap.set("n", "gpt", "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", { noremap = true })
    keymap.set("n", "gpD", "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>", { noremap = true })
    keymap.set("n", "gx", "<cmd>lua require('goto-preview').close_all_win()<CR>", { noremap = true })
  end,
}
