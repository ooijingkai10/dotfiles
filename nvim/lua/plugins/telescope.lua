return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
      local builtin = require('telescope.builtin')

      require('telescope').setup {
          pickers = {
              hidden = true
          },
          file_ignore_patterns = {
              "./node_modules/*",
              "node_modules",
              "^node_modules/*",
              "node_modules/*",
              "venv/*",
              "venv",
              "./venv",
              ".git/",
          }
      }

      -- opens git_files and fallback to find_files if its not a git directory
      -- vim.keymap.set('n', '<leader>ff', function()
      --   local _, ret, _ = utils.get_os_command_output({ 'git', 'rev-parse', '--is-inside-work-tree' })
      --   if ret == 0 then
      --     opts = opts or {}
      --     opts.cwd = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
      --     builtin.find_files(opts)
      --   else
      --     builtin.find_files({
      --     })
      --   end
      -- end)
      vim.keymap.set('n', '<leader><space>', builtin.find_files, { desc = "fzf files" })
      vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = "fzf gitfiles"})
      vim.keymap.set('n', '<leader>fp', builtin.resume, { desc = "resume fzf files"})
      vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
      vim.keymap.set('n', '<leader>co', builtin.commands, {})
  end
}
