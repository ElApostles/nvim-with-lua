vim.cmd [[
try
  colorscheme xcodedark
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
