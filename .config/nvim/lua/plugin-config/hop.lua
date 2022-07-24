local status, hop = pcall(require, "hop")
if not status then
  vim.notify("can not find hop")
  return
end

hop.setup(
  {
    keys = 'etovxqpdygfblzhckisuran'
  }
)
