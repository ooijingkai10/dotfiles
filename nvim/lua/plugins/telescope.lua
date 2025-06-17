return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader><space>", LazyVim.pick("find_files", { hidden = true }), desc = "Find Files with Hidden (Root Dir)" },
  },
}
