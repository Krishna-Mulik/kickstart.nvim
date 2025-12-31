return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      vim.keymap.set('n', '-', '<cmd>Oil<CR>'),
      view_options = {
        show_hidden = false,
        is_hidden_file = function(name, _)
          return name:sub(1, 1) == '.' and not name:match '^%.env'
        end,
      },
    },
    -- Optional dependencies
    dependencies = { { 'nvim-mini/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
}
