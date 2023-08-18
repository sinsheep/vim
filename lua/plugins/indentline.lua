vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
local M = {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPre",
    opts = {
        space_char_blankline = " ",
        show_current_context = true,
        show_current_context_start = true,
        filetype_exclude = {
            "coc-explorer",
            "dashboard",
            "floaterm",
            "alpha",
            "help",
            "packer",
            "Neotree",
        },
    },
}

return M
