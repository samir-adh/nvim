-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  {
    'loctvl842/monokai-pro.nvim',
    lazy = false,
    priority = 1000,
    config = function() require('monokai-pro').setup() end,
  },
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function() require('gruvbox').setup() end,
  },
  {
    'Shatur/neovim-ayu',
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true
      require('ayu').setup {
        -- Optional: Override default settings here
        mirage = true, -- Set to true for mirage variant
        overrides = {
          -- Custom highlight groups can be added here
        },
      }
      vim.cmd.colorscheme 'ayu' -- Set the colorscheme
    end,
  },
}
