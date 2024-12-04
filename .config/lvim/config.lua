lvim.colorscheme = "modus"
lvim.transparent_window = true


lvim.plugins = {
  { "miikanissi/modus-themes.nvim"},
  {
    "jackMort/ChatGPT.nvim",
      event = "VeryLazy",
      config = function()
        require("chatgpt").setup({
          api_key_cmd = "pass show api/tokens/openai"
        })
      end,
      dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "folke/trouble.nvim", -- optional
        "nvim-telescope/telescope.nvim"
      }
  }
}

-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
