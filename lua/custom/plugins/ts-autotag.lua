return {
  'windwp/nvim-ts-autotag',
  config = function()
    require('nvim-ts-autotag').setup {
      autotag = { -- The new nested key
        enable = true,
        filetypes = { 'html', 'javascript', 'typescript', 'jsx', 'tsx', 'svelte', 'vue' },
        -- ... other options
      },
    }
  end,
}
