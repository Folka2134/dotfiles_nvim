return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      php = { "php_cs_fixer" },
    },
    formatters = {
      php_cs_fixer = {
        args = {
          "--rules=@PSR12,ordered_imports,no_unused_imports,array_syntax",
          "--using-cache=no",
          "fix",
          "$FILENAME",
        },
      },
    },
  },
}
