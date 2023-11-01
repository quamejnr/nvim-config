local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- python
  b.formatting.black,

  -- go 
  b.formatting.gofmt,
  b.formatting.goimports,
}

null_ls.setup {
  debug = true,
  sources = sources,
}

-- Add autocmds to run formatting on save for .go, .rs, and .py files
-- vim.cmd([[
--   augroup null_ls_formatting
--     autocmd!
--     autocmd BufWritePre *.go lua vim.lsp.buf.format((nil, 1000)
--     autocmd BufWritePre *.py lua vim.lsp.buf.format((nil, 1000)
--   augroup END
-- ]])
