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
      vim.cmd.colorscheme 'gruvbox' -- Set the colorscheme
    end,
  },
  {
    'akinsho/bufferline.nvim',
    version = 'v4.*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      vim.opt.termguicolors = true
      require('bufferline').setup {
        options = {
          mode = 'tabs',
          separator_style = { '', '' }, -- No separators for clean look
          indicator = { style = 'none' },
          tab_size = 20,
          maximum_length = 30,
          truncate_names = true,
          diagnostics = 'nvim_lsp',
          offsets = {
            { filetype = 'NvimTree', text = '📁 Explorer' },
          },
          highlights = {
            tab_selected = { fg = '#1a1b26', bg = '#74b1ff', bold = true },
            tab = { fg = '#6c7086', bg = '#1a1b26' },
          },
        },
      }
    end,
  },
}
