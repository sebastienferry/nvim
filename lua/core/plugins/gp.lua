-- lazy.nvim
return {
    "robitx/gp.nvim",
    enabled = false,
    config = function()
        require("gp").setup({
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            openai_api_key = os.getenv("OPENAI_API_KEY"), -- your openai api key
        })

        -- or setup with your own config (see Install > Configuration in Readme)
        -- require("gp").setup(config)

        -- shortcuts might be setup here (see Usage > Shortcuts in Readme)
    end,
}
