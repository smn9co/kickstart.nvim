return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim', config = function() require("ibl").setup() end,
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  },
}
