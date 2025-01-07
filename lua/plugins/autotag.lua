return {
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter", -- Load when entering Insert mode
    config = function()
      require("nvim-ts-autotag").setup {
        aliases = {
          --["erb"] = "embedded_template",
          ["erbruby"] = "html",
        },
        opts = {
          enable_close = true, -- Auto close tags
          enable_rename = true, -- Auto rename pairs of tags
          enable_close_on_slash = false, -- Auto close on trailing </
        },
        per_filetype = {
          ["html"] = {
            enable_close = true,
          },
          ["embedded_template"] = { enable_close = true },
        },
      }
    end,
  },
}
