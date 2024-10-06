return {
  "leath-dub/snipe.nvim",
  keys = {
    {
      "<leader>ss",
      function()
        require("snipe").open_buffer_menu()
      end,
      desc = "Open Snipe buffer menu",
    },
  },
  opts = {},
  config = function()
    local snipe = require("snipe")
    snipe.setup({
      sort = "last",
    })
  end,
}
