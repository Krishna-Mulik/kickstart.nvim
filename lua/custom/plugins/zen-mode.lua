return {
  'folke/zen-mode.nvim',
  opts = {
    window = {
      backdrop = 0.8, -- dims surrounding windows for focus
      width = function()
        return math.min(120, vim.o.columns * 0.75)
      end,
      height = 0.9, -- 90% of the editor height
      options = {
        signcolumn = 'no',
        number = false,
        relativenumber = false,
        foldcolumn = '0',
        list = false,
        cursorline = false,
        cursorcolumn = false,
        colorcolumn = '',
      },
    },

    plugins = {
      options = {
        enabled = true,
        ruler = false,
        showcmd = false,
        laststatus = 0,
      },

      twilight = { enabled = false }, -- dims code outside the cursor
      gitsigns = { enabled = false },
      tmux = { enabled = true }, -- hide tmux bar
      kitty = { enabled = false },
      alacritty = { enabled = false },
      wezterm = { enabled = true, font = '+6' }, -- +10% font size
      neovide = { enabled = false },
    },

    on_open = function()
      vim.g.zen_mode_active = true
      vim.notify '🧘'
      vim.api.nvim_set_hl(0, 'Normal', { bg = '#1a1b26' }) -- solid background
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#1a1b26' })
    end,

    on_close = function()
      vim.g.zen_mode_active = false
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' }) -- solid background
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    end,
  },
}
