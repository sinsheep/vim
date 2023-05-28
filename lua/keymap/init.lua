require('keymap.config')
local key = require('core.keymap')
local nmap, vmap = key.nmap, key.vmap
local silent, noremap = key.silent, key.noremap
local opts = key.new_opts
local cmd = key.cmd
local utils = require("utils")
local keymap = vim.keymap.set
-- usage of plugins
nmap({
    -- nvimtree
    { '<Leader>e', cmd('NvimTreeToggle'), opts(noremap, silent) },
    -- Telescope
    -- { '<Leader>fb', cmd('Telescope buffers'), opts(noremap, silent) },
    -- { '<Leader>fg', cmd('Telescope live_grep'), opts(noremap, silent) },
    -- { '<Leader>ff', cmd('Telescope find_files'), opts(noremap, silent) },
    -- { '<Leader>fo', cmd('Telescope help_tags'), opts(noremap, silent) },
    -- { '<leader>fh', cmd('Telescope oldfiles'), opts(noremap, silent)},

    -- lazy.nvim
    { '<Leader>l', cmd('Lazy'),opts(noremap, silent)},
    -- toggleterm
   -- code_runnign
    {'<leader>R', cmd("RunCode"), opts(noremap, silent)},
    {'<leader>C', cmd("RunClose"),opts(noremap,silent)},
    -- lspsagagg

    {"K", "<cmd>Lspsaga hover_doc<CR>", opts(noremap, silent)},
    {"[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>",opts(noremap, silent)},
    {"]e", cmd("Lspsaga diagnostic_jump_next"),opts(noremap, silent)},
    {"<leader>rn", "<cmd>Lspsaga rename<CR>",opts(noremap, silent)},
    {"<leader>ca", "<cmd>Lspsaga code_action<CR>",opts(noremap, silent)},
    {"gd",cmd('Lspsaga goto_definition'),opts(noremap,silent)},
    {"gD",cmd('Lspsaga peek_definition'),opts(noremap,silent)},
    {"gh", "<cmd>Lspsaga lsp_finder<CR>", opts(noremap,silent) },
    {"gp", "<cmd>Lspsaga preview_definition<CR>",opts(noremap,silent)},
    {"<leader>sl", cmd('Lspsaga show_line_diagnostics'),opts(noremap, silent)},
    {'<leader>o', cmd('Lspsaga outline'), opts(noremap, silent)},
    {"<leader>ft", "<cmd>Lspsaga term_toggle<CR>",opts(noremap, silent)},
    { "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>",opts(noremap,silent)},

    {'<leader>cm',cmd('Mason'),opts(noremap,silent)},
--     -- hop
--     {"<leader>jw", cmd("HopWord"), opts(noremap,silent)},
--     {"ss", cmd("HopChar1"), opts(noremap,silent)},
--

--toggle options

})

vim.keymap.set("n", "<leader>tw", function()
    utils.toggle("wrap")
end, { desc = "Toggle Word Wrap" })
vim.keymap.set("n", "<leader>ts", function()
    utils.toggle("spell")
end, { desc = "Toggle Spelling" })
vim.keymap.set("n", "<leader>tl", function()
    utils.toggle("relativenumber")
end, { desc = "Toggle Line Numbers" })
vim.keymap.set("n", "<leader>td", utils.toggle_diagnostics, { desc = "Toggle Diagnostics" })
vim.keymap.set("n", "<leader>q", utils.toggle_quickfix, { desc = "Toggle Quickfix Window" })

vim.keymap.set("n", "<C-M-f>", function()
    vim.lsp.buf.format({ async = false })
    vim.api.nvim_command("write")
end, { desc = "Lsp formatting" })

-- lspsaga
keymap("n", "[E", function()
  require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
end)
keymap("n", "]E", function()
  require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
end)

-- Show buffer diagnostics
keymap("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")
