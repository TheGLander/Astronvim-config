return {
  {
    "chrisgrieser/nvim-spider",
    config = function(conf)
      conf.skipInsignificantPunctuation = false
      return conf
    end,
    init = function()
      vim.keymap.set({ "n", "o", "x" }, ",w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
      vim.keymap.set({ "n", "o", "x" }, ",e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
      vim.keymap.set({ "n", "o", "x" }, ",b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })
    end,
  },
}