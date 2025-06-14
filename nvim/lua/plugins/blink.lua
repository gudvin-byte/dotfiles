return {
  "saghen/blink.cmp",
  dependencies = {
    'Kaiser-Yang/blink-cmp-avante',
  },
  opts = {
    sources = {
      default = {'avante', 'lsp', 'path', 'luasnip', 'buffer'},
      providers = {
        avante = {
          module = 'blink-cmp-avante',
          name = 'Avante',
        }
      },
    },
    keymap = {
      ["<C-y"] = { "select_and_accept" },
      ["<CR>"] = { "fallback" },
    },
  },
}
