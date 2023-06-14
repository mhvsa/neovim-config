local function init()
    vim.g.matchup_matchparen_offscreen = { method = "popup" }
    require 'nvim-treesitter.configs'.setup {
        matchup = {
            enable = true, -- mandatory, false will disable the whole extension
            disable = {},  -- optional, list of language that will be disabled
        } }
end

return {
    'andymass/vim-matchup',
    init = init,
}
