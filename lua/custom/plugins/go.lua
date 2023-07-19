return {
  "ray-x/go.nvim",
  dependencies = {  -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  cond = function()
    local handle = io.popen("which go")
    if handle ~= nil then
      local result = handle:read("*a")
      handle:close()
      if result ~= "" then
        return true
      end
    end
    return false
  end,
  config = function()
    require("go").setup()
  end,
  event = {"CmdlineEnter"},
  ft = {"go", 'gomod'},
  build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
}
