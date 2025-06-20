return {
  {
    "nvim-neotest/neotest",
    dependencies = { "nvim-neotest/nvim-nio" },
    opts = {
      -- Can be a list of adapters like what neotest expects,
      -- or a list of adapter names,
      -- or a table of adapter names, mapped to adapter configs.
      -- The adapter will then be automatically loaded with the config.
      adapters = {
        ["neotest-golang"] = {
          go_test_args = { "-v", "-race", "-count=1" },
          dap_go_enabled = true,
          log_level = vim.log.levels.INFO,
        },
      },
    },
  },
}
