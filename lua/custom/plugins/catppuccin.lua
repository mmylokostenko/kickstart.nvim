return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup({
      flavour = 'mocha', -- latte, frappe, macchiato, mocha
      auto_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        lsp_trouble = true,
        markdown = true,
        mason = true,
        telescope = true,
        treesitter = true,
        treesitter_context = false,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { 'italic' },
            hints = { 'italic' },
            warnings = { 'italic' },
            information = { 'italic' },
          },
          underlines = {
            errors = { 'undercurl' },
            hints = { 'undercurl' },
            warnings = { 'undercurl' },
            information = { 'undercurl' },
          },
        },
        indent_blankline = true,
        which_key = true,
        notify = true,
      },
    })
    vim.cmd.colorscheme('catppuccin')
  end,
}

-- vim: ts=2 sts=2 sw=2 et
