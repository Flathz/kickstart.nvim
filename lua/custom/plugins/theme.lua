return {
  {
    'Shatur/neovim-ayu',
    lazy = false,    -- Load this during startup so the theme applies immediately
    priority = 1000, -- High priority to ensure it loads before other plugins
    config = function()
      require('ayu').setup {
        mirage = false,  -- Set to `true` for the mirage variant
        terminal = true, -- Let ayu handle terminal colors
        overrides = {},  -- Custom highlight groups go here
      }

      vim.cmd("colorscheme ayu")
    end,
  },
}
