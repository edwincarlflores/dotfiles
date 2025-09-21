require("ecbfdev.core")
require("ecbfdev.lazy")
require("ecbfdev.lazygit")

vim.filetype.add({
  extension = {
    templ = "templ",
    mdx = "mdx",
  },
})

vim.diagnostic.config({
  virtual_text = true,
  -- update_in_insert = false,
  -- signs = true,
  -- underline = true,
  -- update_in_insert = false,
  -- severity_sort = true,
  float = {
    -- border = "rounded",
    source = "always",
  },
})

-- local banned_messages = { "No information available" }
-- vim.notify = function(msg, ...)
--   for _, banned in ipairs(banned_messages) do
--     if msg == banned then
--       return
--     end
--   end
--   return require("notify")(msg, ...)
-- end

if vim.env.TERM == "xterm-kitty" then
  vim.cmd([[autocmd UIEnter * if v:event.chan ==# 0 | call chansend(v:stderr, "\x1b[>1u") | endif]])
  vim.cmd([[autocmd UILeave * if v:event.chan ==# 0 | call chansend(v:stderr, "\x1b[<1u") | endif]])
end

vim.cmd([[cab cc CodeCompanion]])
