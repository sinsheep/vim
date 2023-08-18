local M = {}
M       = {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
    config = function()
        require("lspsaga").setup({
            preview = {
                lines_above = 0,
                lines_below = 10,
            },
            code_action = {
                num_shortcut = true,
                show_server_name = true,
                extend_gitsigns = true,
                keys = {
                    -- string | table type
                    quit = "q",
                    exec = "<CR>",
                },
            },
            ui = {
                -- This option only works in Neovim 0.9
                title = true,
                -- Border type can be single, double, rounded, solid, shadow.
                border = "single",
                winblend = 0,
                expand = "",
                collapse = "",
                code_action = "?",
                incoming = " ",
                outgoing = " ",
                hover = ' ',
                kind = {},
            },
        })
    end
}

return M
