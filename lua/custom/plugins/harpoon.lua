return {
  'ThePrimeagen/harpoon',
  config = function()
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    vim.keymap.set('n', '<leader>a', mark.add_file, { desc = 'Add file to Harpoon' })
    vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, { desc = 'Harpoon' })

    vim.keymap.set('n', '11', function()
      ui.nav_file(1)
    end)

    vim.keymap.set('n', '22', function()
      ui.nav_file(2)
    end)
    vim.keymap.set('n', '33', function()
      ui.nav_file(3)
    end)
    vim.keymap.set('n', '44', function()
      ui.nav_file(3)
    end)
  end,
}
