local nvim_tree = {
    "nvim-tree/nvim-tree.lua",
    enabled = false,
    config = function()
      require("nvim-tree").setup({
          view = {
              width = 40,
          }
      })
  end
}
return nvim_tree