-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- 自定义 OSC 52 剪贴板逻辑
local function paste()
  -- 返回空内容，直接跳过从终端读取剪贴板的步骤
  -- 这样可以避免 "Waiting for OSC 52 response" 的卡顿
  return { { "" }, "v" }
end

vim.g.clipboard = {
  name = "OSC 52",
  copy = {
    ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
    ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
  },
  paste = {
    ["+"] = paste,
    ["*"] = paste,
  },
}

-- 确保启用了系统剪贴板集成
vim.opt.clipboard = "unnamedplus"
