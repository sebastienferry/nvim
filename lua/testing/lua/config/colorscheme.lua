local theme = 'monokai_pro'
local is_ok, _ = pcall(vim.cmd, "colorscheme " .. theme)
if not is_ok then
    vim.notify('colorscheme ' .. theme .. ' not found!')
    return
end