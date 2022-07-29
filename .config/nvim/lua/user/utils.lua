-- reference: https://github.com/neovim/nvim-lspconfig/blob/9ff2a06cebd4c8c3af5259d713959ab310125bec/lua/lspconfig/util.lua

local vim = vim
local validate = vim.validate
local uv = vim.loop

local M = {}

M.starts_with = function(str, start)
  return str:sub(1, #start) == start
end

M.ends_with = function(str, ending)
  return ending == "" or str:sub(- #ending) == ending
end

-- file exist?
M.exists = function(file)
    local ok, err, code = os.rename(file, file)
    if not ok then
        if code == 13 then
            -- Permission denied, but it exists
            return true
        end
    end
    return ok, err
end


M.SaveAndExit = function()
    -- wirte all buffer first
    vim.api.nvim_command(":wa")
    -- quit all buffer
    vim.api.nvim_command(":qa")
end

-- Some path utilities
M.path = (function()
    local is_windows = uv.os_uname().version:match 'Windows'

    local function sanitize(path)
        if is_windows then
            path = path:sub(1, 1):upper() .. path:sub(2)
            path = path:gsub('\\', '/')
        end
        return path
    end

    local function exists(filename)
        local stat = uv.fs_stat(filename)
        return stat and stat.type or false
    end

    local function is_dir(filename)
        return exists(filename) == 'directory'
    end

    local function is_file(filename)
        return exists(filename) == 'file'
    end

    local function is_fs_root(path)
        if is_windows then
            return path:match '^%a:$'
        else
            return path == '/'
        end
    end

    local function is_absolute(filename)
        if is_windows then
            return filename:match '^%a:' or filename:match '^\\\\'
        else
            return filename:match '^/'
        end
    end

    local function dirname(path)
        local strip_dir_pat = '/([^/]+)$'
        local strip_sep_pat = '/$'
        if not path or #path == 0 then
            return
        end
        local result = path:gsub(strip_sep_pat, ''):gsub(strip_dir_pat, '')
        if #result == 0 then
            if is_windows then
                return path:sub(1, 2):upper()
            else
                return '/'
            end
        end
        return result
    end

    local function path_join(...)
        return table.concat(vim.tbl_flatten { ... }, '/')
    end

    -- Traverse the path calling cb along the way.
    local function traverse_parents(path, cb)
        path = uv.fs_realpath(path)
        local dir = path
        -- Just in case our algo is buggy, don't infinite loop.
        for _ = 1, 100 do
            dir = dirname(dir)
            if not dir then
                return
            end
            -- If we can't ascend further, then stop looking.
            if cb(dir, path) then
                return dir, path
            end
            if is_fs_root(dir) then
                break
            end
        end
    end

    -- Iterate the path until we find the rootdir.
    local function iterate_parents(path)
        local function it(_, v)
            if v and not is_fs_root(v) then
                v = dirname(v)
            else
                return
            end
            if v and uv.fs_realpath(v) then
                return v, path
            else
                return
            end
        end

        return it, path, path
    end

    local function is_descendant(root, path)
        if not path then
            return false
        end

        local function cb(dir, _)
            return dir == root
        end

        local dir, _ = traverse_parents(path, cb)

        return dir == root
    end

    local path_separator = is_windows and ';' or ':'

    return {
        is_dir = is_dir,
        is_file = is_file,
        is_absolute = is_absolute,
        exists = exists,
        dirname = dirname,
        join = path_join,
        sanitize = sanitize,
        traverse_parents = traverse_parents,
        iterate_parents = iterate_parents,
        is_descendant = is_descendant,
        path_separator = path_separator,
    }
end)()

M.search_ancestors = function(startpath, func)
    validate { func = { func, 'f' } }
    if func(startpath) then
        return startpath
    end
    local guard = 100
    for path in M.path.iterate_parents(startpath) do
        -- Prevent infinite recursion if our algorithm breaks
        guard = guard - 1
        if guard == 0 then
            return
        end

        if func(path) then
            return path
        end
    end
end

M.root_pattern = function(...)
    local patterns = vim.tbl_flatten { ... }
    local function matcher(path)
        for _, pattern in ipairs(patterns) do
            for _, p in ipairs(vim.fn.glob(M.path.join(path, pattern), true, true)) do
                if M.path.exists(p) then
                    return path
                end
            end
        end
    end

    return function(startpath)
        return M.search_ancestors(startpath, matcher)
    end
end

M.find_git_ancestor = function(startpath)
    return M.search_ancestors(startpath, function(path)
        -- Support git directories and git files (worktrees)
        if M.path.is_dir(M.path.join(path, '.git')) or M.path.is_file(M.path.join(path, '.git')) then
            return path
        end
    end)
end


M.run_test = function()
    local table = vim.fn.readdir("/home/lt/.config/nvim/lua/user/plugin-config")
    print(#table)
    -- local total_buf_name = vim.api.nvim_buf_get_name(0)
    -- local root_path = M.find_git_ancestor(total_buf_name)
    -- print(root_path)

    -- local total_buf_name = vim.api.nvim_buf_get_name(0)
    -- local table = vim.fn.split(total_buf_name, "/")
    -- local ui_name = table[#table]
    -- local py_name = "ui_" .. ui_name:gsub(".lua", ".ui")
    -- local total_py_name = total_buf_name:gsub(ui_name, py_name)
    -- print(py_name)
    -- print(total_py_name)
    -- local suffix = total_buf_name:sub(-3)
    -- print(suffix)
end

M.run_files = function()
    if vim.api.nvim_buf_get_option(0, "filetype") == "markdown" then -- cutomize difference language comment marker
        vim.api.nvim_command(":MarkdownPreviewToggle")
    elseif vim.api.nvim_buf_get_option(0, "filetype") == "python" then
        local buf_name = vim.api.nvim_buf_get_name(0)
        os.execute("python3 /" .. buf_name)
    else
        print("Try to run unknown filetype!!")
    end
end
-- elseif vim.api.nvim_buf_get_option(0, "filetype") == "shell" then

-- M.search_config_files = function()
--     require('telescope.builtin').live_grep({ search_dirs = { '~/dotfiles/.config' } })
-- end

M.run_qt_designer = function()
    os.execute('pyside6-designer')
    print("open qtdesigner success")
end

M.run_qt_designer_args = function()
    local total_buf_name = vim.api.nvim_buf_get_name(0)
    local suffix = total_buf_name:sub(-3)
    if (suffix ~= ".ui") then
        print("suffix is not ui for qt")
        return
    end
    os.execute('pyside6-designer /' .. total_buf_name)
    print("open qtdesigner success, path : " .. total_buf_name)
end

M.run_pyuic = function()
    local total_buf_name = vim.api.nvim_buf_get_name(0)
    local suffix = total_buf_name:sub(-3)
    if (suffix ~= ".ui") then
        print("suffix is not ui for qt")
        return
    end
    local table = vim.fn.split(total_buf_name, "/")
    local ui_name = table[#table]
    local py_name = "ui_" .. ui_name:gsub(".ui", ".py")
    local total_py_name = total_buf_name:gsub(ui_name, py_name)
    os.execute("pyside6-uic /" .. total_buf_name .. " > /" .. total_py_name)
    print("uic success, path : " .. total_py_name)
end

return M
