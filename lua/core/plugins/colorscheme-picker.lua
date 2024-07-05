return {
    "runih/colorscheme-picker.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        local ok, colorscheme = pcall(require, "colorscheme-picker")
        if not ok then
            print("Color Picker is not loaded")
            return
        end
        colorscheme.setup({
            keymapping = "<leader>uc",
            live_preview = true,
        })
        colorscheme.set_default_colorscheme()
    end,
}
