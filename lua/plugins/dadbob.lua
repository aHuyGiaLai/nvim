return {
  -- Plugin core: kết nối và thực thi query
  {
    "tpope/vim-dadbod",
    cmd = "DB",
  },
  -- Plugin UI: giao diện quản lý database dạng cây
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      { "tpope/vim-dadbod",                     lazy = true },
      { "kristijanhusak/vim-dadbod-completion",  ft = { "sql", "mysql", "plsql" }, lazy = true },
    },
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
    init = function()
      vim.g.db_ui_use_nerd_font_icons = 1
      vim.g.db_ui_show_database_icon = 1
      vim.g.db_ui_force_echo_notifications = 1
      vim.g.db_ui_win_position = "left"
      vim.g.db_ui_winwidth = 40
      vim.g.db_ui_auto_execute_table_helpers = 1
    end,
    keys = {
      { "<leader>db", "<cmd>DBUIToggle<CR>",        desc = "Toggle DB UI" },
      { "<leader>da", "<cmd>DBUIAddConnection<CR>", desc = "Add DB Connection" },
      { "<leader>df", "<cmd>DBUIFindBuffer<CR>",    desc = "Find DB Buffer" },
    },
  },
}
