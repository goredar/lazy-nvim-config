return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        nls.builtins.diagnostics.actionlint,
        nls.builtins.diagnostics.codespell,
        nls.builtins.diagnostics.commitlint,
        nls.builtins.diagnostics.gitlint,
        nls.builtins.diagnostics.hadolint,
        -- nls.builtins.diagnostics.misspell,
        nls.builtins.diagnostics.shellcheck,
        nls.builtins.diagnostics.write_good,
        nls.builtins.diagnostics.yamllint,
        nls.builtins.diagnostics.flake8,
        nls.builtins.diagnostics.vale,
        nls.builtins.diagnostics.sqlfluff.with({
          extra_args = { "--dialect", "postgres" },
        }),
        nls.builtins.diagnostics.terraform_validate,

        nls.builtins.formatting.cbfmt,
        nls.builtins.formatting.jq,
        nls.builtins.formatting.ktlint,
        nls.builtins.formatting.markdownlint,
        nls.builtins.formatting.prettier.with({
          disabled_filetypes = { "yaml", "json" },
        }),
        nls.builtins.formatting.shellharden,
        nls.builtins.formatting.stylua,
        nls.builtins.formatting.isort,
        nls.builtins.formatting.black,
        nls.builtins.formatting.terraform_fmt,
        nls.builtins.formatting.trim_newlines,
        nls.builtins.formatting.trim_whitespace,
        nls.builtins.formatting.gofmt,
        nls.builtins.formatting.goimports,
        nls.builtins.formatting.golines,
        nls.builtins.formatting.sqlfluff.with({
          extra_args = { "--dialect", "postgres" },
        }),
        nls.builtins.formatting.terraform_fmt,
      },
    }
  end,
}
