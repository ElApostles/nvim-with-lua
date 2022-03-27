-- Setup nvim-cmp.
local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
  return
end

npairs.setup {
  check_ts = true,
  enable_check_bracket_line = false,
  ignored_next_char = "[%w%.]",
  disable_filetype = { "TelescopePrompt", "spectre_panel" },
  fast_wrap = {
    map = "<M-e>",
    chars = { "{", "[", "(", '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
    offset = -1, -- Offset from pattern match
    end_key = "$",
    keys = "qwertyuiopzxcvbnmasdfghjkl",
    check_comma = true,
    highlight = "Search",
    highlight_grey = "Comment",
  },
}

local Rule = require('nvim-autopairs.rule')
local ts_conds = require('nvim-autopairs.ts-conds')
local cond = require('nvim-autopairs.conds')
-- press % => %% only while inside a comment or string
npairs.add_rules({
  Rule("%", "%", "lua")
    :with_pair(ts_conds.is_ts_node({'string','comment'})),
  Rule("$", "$", "lua")
    :with_pair(ts_conds.is_not_ts_node({'function'}))
})

npairs.add_rules({
  Rule("$", "$",{"tex", "latex"})
    -- disable adding a newline when you press <cr>
    :with_cr(cond.none())
  }
)

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })
