lvim.colorscheme = "modus"
lvim.transparent_window = true
vim.opt.number = true
vim.opt.relativenumber = true

-- Add keymappings for Oil
lvim.keys.normal_mode["-"] = "<CMD>Oil<CR>"  -- Open oil in the current directory
lvim.keys.normal_mode["<leader>o"] = "<CMD>Oil --float<CR>"  -- Open oil in a floating window

-- Add after your plugins section
lvim.keys.visual_mode["<leader>zci"] = ":<C-u>'<,'>ClaudeImplement<Space>"
lvim.keys.normal_mode["<leader>zcc"] = ":ClaudeChat<CR>"
lvim.keys.normal_mode["<leader>zcx"] = ":ClaudeCancelResponse<CR>"

-- Unmap the default leader+c for closing buffer
lvim.keys.normal_mode["<leader>c"] = false
-- Map leader+x to close buffer
lvim.keys.normal_mode["<leader>x"] = ":BufferKill<CR>"

-- Add keymappings for tab navigation by number (1-9)
for i = 1, 9 do
  lvim.keys.normal_mode["<leader>" .. i] = i .. "gt"
end

lvim.plugins = {
  { "miikanissi/modus-themes.nvim"},
  {
    "christoomey/vim-tmux-navigator",
      cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
      },
      keys = {
        { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
        { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
        { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
        { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
        { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
      }
  },
  {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },  -- Changed from mini.icons to nvim-web-devicons
    lazy = false,
    opts = {
      -- View options
      view_options = {
        show_hidden = true,
        natural_order = true,
      },
      -- Custom keymaps for within the Oil buffer
      keymaps = {
        ["<C-v>"] = { "actions.select", opts = { vertical = true } },
        ["<C-s>"] = { "actions.select", opts = { horizontal = true } },
        ["<C-t>"] = { "actions.select", opts = { tab = true } },
        ["<C-p>"] = "actions.preview",
        ["-"] = "actions.parent",
        ["g."] = "actions.toggle_hidden",
      },
      -- Floating window settings (for :Oil --float)
      float = {
        padding = 2,
        border = "rounded",
      },
    },
  },
  {
    "pasky/claude.vim",
    lazy = false,
  }
}

local api_keys = {}
local api_keys_path = vim.fn.expand("~/.config/lvim/api_keys.lua")

-- Try to load API keys, but don't error if file doesn't exist
if vim.fn.filereadable(api_keys_path) == 1 then
  api_keys = dofile(api_keys_path)
  -- Add API key configuration
  vim.g.claude_api_key = api_keys.claude_api_key
else
  -- Handle case when file doesn't exist
  print("API keys file not found. Some features may not work.")
end
