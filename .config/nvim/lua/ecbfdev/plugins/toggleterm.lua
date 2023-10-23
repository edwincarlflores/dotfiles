return {
  "akinsho/toggleterm.nvim",
  config = function()
    local toggleterm = require("toggleterm")
    toggleterm.setup({
      shade_teminals = false,
      highlights = {
        StatusLine = { guifg = "#ffffff", guibg = "#0E1018" },
        StatusLineNC = { guifg = "#ffffff", guibg = "#0E1018" },
      },
    })
  end,
}
