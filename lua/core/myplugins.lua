function MY_LUA_FUNC()
    local line = vim.fn.getline(".")
    local _, checkbox_start = line:find("^%s*%- %[ %]")
    local _, checkbox_end = line:find("^%s*%- %[ x %]")
    local has_checkbox = checkbox_start or checkbox_end

    if has_checkbox then
        local new_line
        if checkbox_start then
            new_line = line:gsub("%- %[%s*%]", "- [x]")
        else
            new_line = line:gsub("%- %[%s*x%s*%]", "- [ ]")
        end
        vim.fn.setline(".", new_line)
    else
        -- 找到前置空格和后面字符串
        vim.fn.setline(".", "- [ ] " .. line)
    end
end
