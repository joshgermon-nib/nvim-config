return {
    {
        "nvim-lua/plenary.nvim",
        name = "plenary"
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "plenary" },
        config = function ()
          local builtin = require('telescope.builtin')
          vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
          vim.keymap.set('n', '<C-p>', builtin.git_files, {})
          vim.keymap.set('n', 'gr', builtin.lsp_references, {})
          vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
          vim.keymap.set('n', '<leader>sf', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
          end)

          vim.keymap.set('n', '<leader>km', builtin.keymaps, {})
        end
    },
}
