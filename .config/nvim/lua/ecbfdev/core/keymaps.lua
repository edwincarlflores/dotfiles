-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- buffer management
keymap.set("n", "<Tab>", "<cmd>bnext<CR>", { noremap = true, silent = true, desc = "Go to next buffer" }) -- go to next buffer
keymap.set("n", "<S-Tab>", "<cmd>bprevious<CR>", { noremap = true, silent = true, desc = "Go to previous buffer" }) -- go to previous buffer
keymap.set(
  "n",
  "<leader>x",
  "<cmd>:bprevious <bar> bdelete #<CR>",
  { noremap = true, silent = true, desc = "Close current buffer" }
) -- Close current buffer
keymap.set(
  "n",
  "<leader>bx",
  '<cmd>%bdelete|edit #|normal `"<CR>',
  { noremap = true, silent = true, desc = "Close all other buffers" }
) -- close all buffers

keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
keymap.set("n", "n", "nzz", { noremap = true, silent = true })
keymap.set("n", "N", "Nzz", { noremap = true, silent = true })
keymap.set({ "n", "v" }, "<leader><leader>", [["_]], { noremap = true, silent = true }) -- copy to void register, can be used with dd, c, ciw etc.
keymap.set({ "n", "v" }, "<leader>y", [["+y]], { noremap = true, silent = true })
keymap.set("n", "<leader>Y", [["+Y]], { noremap = true, silent = true })

keymap.set("n", "<leader>ww", "<cmd>w<CR>", { noremap = true, silent = true, desc = "Write file" }) -- write file

-- Neogen
keymap.set("n", "<leader>gt", "<cmd>Neogen type<cr>", { silent = true, noremap = true })
keymap.set("n", "<leader>gf", "<cmd>Neogen func<cr>", { silent = true, noremap = true })
keymap.set("n", "<leader>gc", "<cmd>Neogen class<cr>", { silent = true, noremap = true })
