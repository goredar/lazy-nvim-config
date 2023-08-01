local cmp = require("cmp")
local luasnip = require("luasnip")
local types = require("cmp.types")

return {
  "hrsh7th/nvim-cmp",
  opts = {
    mapping = cmp.mapping.preset.insert({
      ["<C-j>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item({ behavior = types.cmp.SelectBehavior.Insert })
        elseif luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<C-k>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item({ behavior = types.cmp.SelectBehavior.Insert })
        elseif luasnip.jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<C-u>"] = cmp.mapping.scroll_docs(-8),
      ["<C-d>"] = cmp.mapping.scroll_docs(8),
      ["<C-f>"] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      }),
      ["<C-c>"] = cmp.mapping.abort(),
    }),
  },
}
