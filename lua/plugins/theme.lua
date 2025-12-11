return {
  -- 1. 安装并配置 Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- 确保最先加载
    opts = {
      flavour = "mocha", -- 选项: "latte", "frappe", "macchiato", "mocha"
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = true, -- 如果你想透出终端背景，改为 true
      show_end_of_buffer = false, -- 不显示文件末尾的波浪线
      term_colors = true,
      dim_inactive = {
        enabled = false, -- 是否把非活动窗口变暗
        shade = "dark",
        percentage = 0.15,
      },
      styles = {
        comments = { "italic" }, -- 注释斜体
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      -- 关键部分：开启与 LazyVim 常用插件的集成
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },

  -- 2. 告诉 LazyVim 默认使用这个主题
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
