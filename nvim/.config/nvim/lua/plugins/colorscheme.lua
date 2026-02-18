-- lua/plugins/colorscheme.lua
return {
  -- Ajoute le thème Nord
  {
    "gbprod/nord.nvim",
    lazy = false, -- charge immédiatement (important pour le colorscheme)
    priority = 1000, -- charge avant tout le reste
    config = function()
      require("nord").setup({
        -- Options optionnelles (personnalise si tu veux)
        transparent = false, -- fond transparent ? (true/false)
        italic_comments = true,
        uniform_diff_background = true,
        nord_contrast = true, -- plus de contraste si tu aimes
      })

      -- Applique le thème
      vim.cmd.colorscheme("nord")
    end,
  },

  -- Force LazyVim à utiliser Nord comme défaut
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nord",
    },
  },
}
