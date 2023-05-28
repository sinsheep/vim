local M = {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    dependencies = { {"nvim-tree/nvim-web-devicons"} },
    config = function()
        require("lspsaga").setup({})
    end}

return M
