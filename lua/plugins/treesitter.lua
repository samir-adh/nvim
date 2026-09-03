-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

-- NOTE: As of AstroNvim v6, `nvim-treesitter` tracks its `main` branch, which has
-- no `ensure_installed` option. Parsers are now configured through AstroCore as
-- `treesitter.ensure_installed` (see `lua/plugins/astrocore.lua`).

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {},
}
