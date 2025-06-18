return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>F", LazyVim.pick("find_files", { hidden = true }), desc = "Find Files with Hidden (Root Dir)" },
  },
}
