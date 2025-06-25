-- lua/core/keymaps.lua

local keymap = vim.keymap

-- Shorten function name
local opts = { noremap = true, silent = true }

-- Set leader key as space (just in case)
vim.g.mapleader = " "

-- General keymaps
keymap.set("i", "jk", "<Esc>", opts)             -- Exit insert mode with jk
keymap.set("n", "<leader>w", ":w<CR>", opts)     -- Save file
keymap.set("n", "<leader>q", ":q<CR>", opts)     -- Quit
keymap.set("n", "<leader>nh", ":nohl<CR>", opts) -- Clear highlights
keymap.set("n", "x", '"_x', opts)                -- Do not copy deleted character to register
keymap.set("n", "<leader>+", "<C-a>", opts)      -- Increment number
keymap.set("n", "<leader>-", "<C-x>", opts)      -- Decrement number

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", opts)     -- Split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", opts)     -- Split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", opts)     -- Make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>", opts) -- Close current split window

-- Tab management
keymap.set("n", "<leader>to", ":tabnew<CR>", opts)   -- Open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- Close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>", opts)     -- Go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>", opts)     -- Go to previous tab

-- Plugin-related mappings (we’ll activate them later)
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)


-- Flash jump atajo intuitivo
keymap.set("n", "<leader>j", function()
    require("flash").jump()
end, { desc = "Flash jump", noremap = true, silent = true })

-- Abrir LazyGit desde Neovim

keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", opts)

