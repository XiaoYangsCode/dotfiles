local status, hop = pcall(require, "hop")
if not status then
    vim.notify("hop not found!")
    return
end

hop.setup(
    {
        keys = 'etovxqpdygfblzhckisuran'
    }
)
