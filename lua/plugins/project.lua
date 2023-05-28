-- local M = {
-- 	"ahmedkhalf/project.nvim",
-- 	event = "VimEnter",
-- 	opts = {
-- 		exclude_dirs = { "~/Downloads", "~/Desktop" },
-- 		detection_methods = { "pattern", "lsp" },
-- 		ignore_lsp = {},
-- 		silent_chdir = false,
-- 	},
-- 	config = function(_, opts)
-- 		require("project_nvim").setup(opts)
-- 	end,
-- }

-- return M
return {
    "ahmedkhalf/project.nvim",
    event = "VimEnter",
    config = function()
        require("project_nvim").setup {
            patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "Cargo.toml" },
            ignore_lsp = { "efm", "null-ls" },
            silent_chdir = true,
        }
    end,
}
