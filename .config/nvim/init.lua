require("ecbfdev.core")
require("ecbfdev.lazy")
require("ecbfdev.lazygit")

vim.filetype.add({
  extension = {
    templ = "templ",
  },
})

if vim.env.TERM == "xterm-kitty" then
  vim.cmd([[autocmd UIEnter * if v:event.chan ==# 0 | call chansend(v:stderr, "\x1b[>1u") | endif]])
  vim.cmd([[autocmd UILeave * if v:event.chan ==# 0 | call chansend(v:stderr, "\x1b[<1u") | endif]])
end
