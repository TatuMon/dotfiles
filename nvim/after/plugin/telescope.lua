local telescope = require('telescope')
local builtin = require('telescope.builtin')
-- local project_actions = require("telescope._extensions.project.actions")
-- local actions = require('telescope.actions')

require('telescope').setup {
    file_ignore_patterns = {"*.help"},
    debug = true
}

-- require('telescope').setup {
--   extensions = {
--     project = {
--       hidden_files = true, -- default: false
--       theme = "dropdown",
--       order_by = "asc",
--       search_by = "title",
--       -- default for on_project_selected = find project files
--       on_project_selected = function(prompt_bufnr)
--         -- Do anything you want in here. For example:
--         project_actions.find_project_files(prompt_bufnr, false)
--         local dir = project_actions.get_selected_path(prompt_bufnr)
--         vim.cmd.cd("" .. dir .. "")
--         --vim.cmd.echo("" .. dir .. "")
--       end
--     }
--   }
-- }

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function ()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>pl', builtin.live_grep, {})

-- telescope.load_extension('project')
-- vim.keymap.set('n', '<leader>pp', function ()
--     telescope.extensions.project.project{}
-- end)
