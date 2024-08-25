local set = vim.keymap.set

-- navigating splits
set("n", "<c-h>", "<c-w><c-h>")
set("n", "<c-j>", "<c-w><c-j>")
set("n", "<c-k>", "<c-w><c-k>")
set("n", "<c-l>", "<c-w><c-l>")

-- size splits
set("n", "<M-,>", "<c-w>5<")
set("n", "<M-.>", "<c-w>5>")
set("n", "<M-t>", "<c-W>+")
set("n", "<M-s>", "<c-W>-")

local k = vim.keycode

-- Toggle hlsearch if it's on, otherwise just do "enter"
set("n", "<CR>", function()
  if vim.v.hlsearch == 1 then
    vim.cmd.nohl()
    return ""
  else
    return k "<CR>"
  end
end, { expr = true })
