local status, null_ls = pcall(require, 'null-ls')
if (not status) then return end

null_ls.setup {
  sources = {
    null_ls.builtins.diagnostics.eslint.with({
      diagnostics_format = '[eslint_d] #{m}\n (#{c})'
    }),
    null_ls.builtins.code_actions.eslint,
    null_ls.builtins.code_actions.cspell,
    null_ls.builtins.diagnostics.cspell.with({
      diagnostics_format = '[cspell] #{m}\n (#{c})'
    })
  }
}
