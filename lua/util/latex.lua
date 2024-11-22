
local M = {}

local MATH_NODES = {
  displayed_equation = true,
  inline_formula = true,
  math_environment = true,
}

local ts_utils = require("nvim-treesitter.ts_utils")

M.in_env = function(env)
  local node = ts_utils.get_node_at_cursor()
  local bufnr = vim.api.nvim_get_current_buf()
  while node do
    if node:type() == "generic_environment" then
      local begin = node:child(0)
      local name = begin:field("name")
      if name[1] and vim.treesitter.get_node_text(name[1], bufnr, nil) == "{" .. env .. "}" then
        return true
      end
    end
    node = node:parent()
  end
  return false
end

-- M.in_text = function()
--   local node = ts_utils.get_node_at_cursor()
--   while node do
--     if node:type() == "text_mode" then
--       return true
--     elseif MATH_NODES[node:type()] then
--       return false
--     end
--     node = node:parent()
--   end
--   return true
-- end
--
-- M.in_mathzone = function()
--   return not M.in_text()
-- end

M.in_mathzone = function()
  return vim.api.nvim_eval("vimtex#syntax#in_mathzone()") == 1
end

M.in_text = function()
  return not M.in_mathzone()
end

M.in_item = function()
  return M.in_env("itemize") or M.in_env("enumerate")
end
M.in_bib = function()
  return M.in_env("thebibliography")
end
M.in_tikz = function()
  return M.in_env("tikzpicture")
end
M.in_quantikz = function()
  return M.in_env("quantikz")
end
M.in_algo = function()
  return M.in_env("algorithmic")
end

-- For markdown
M.in_latex = function()
  local node = ts_utils.get_node_at_cursor()
  while node do
    if node:type() == "latex_block" then
      print(true)
      return true
    end
    node = node:parent()
  end
  print(false)
  return false
end

M.clean = function()
  local current_dir = vim.fn.expand("%:p:h")
  local file_types = { "aux", "log", "out", "fls", "fdb_latexmk", "bcf", "run.xml", "toc", "DS_Store", "bak*", "dvi" }
  for _, file_type in ipairs(file_types) do
    local command = "rm " .. current_dir .. "/*." .. file_type
    vim.api.nvim_call_function("system", { command })
  end
end

M.format = function()
  local current_file = vim.fn.expand("%:p")
  local latexindent = "latexindent -g /dev/null " .. current_file .. " -wd -l ~/Documents/Latex/latexindent.yaml"
  local build = "pdflatex " .. current_file
  vim.api.nvim_call_function("system", { build })
  vim.cmd("w")
  M.clean()
  vim.api.nvim_call_function("system", { latexindent })
  vim.cmd("e")
  vim.cmd("normal! zz")
  -- vim.cmd("TexlabForward")
end

M.sympy_calc = function()
  local selected_text = vim.fn.getreg("v")
  print(selected_text)
  vim.api.nvim_out_write(selected_text)
end

local ls = require("luasnip")
local t = ls.text_node
local sn = ls.snippet_node
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta
-- postfix helper function - generates dynamic node
local generate_postfix_dynamicnode = function(_, parent, _, user_arg1, user_arg2)
    local capture = parent.snippet.env.POSTFIX_MATCH
    if #capture > 0 then
        return sn(nil, fmta([[
        <><><><>
        ]],
        {t(user_arg1), t(capture), t(user_arg2), i(0)}))
    else
        local visual_placeholder = parent.snippet.env.SELECT_RAW
        return sn(nil, fmta([[
        <><><><>
        ]],
        {t(user_arg1), i(1, visual_placeholder), t(user_arg2), i(0)}))
    end
end

M.postfix_snippet = function (context, command, opts)
    opts = opts or {}
	if not context.trig then
		error("context doesn't include a `trig` key which is mandatory", 2)
	end
	if not context.trig then
		error("context doesn't include a `trig` key which is mandatory", 2)
	end
	context.dscr = context.dscr
	context.name = context.name or context.dscr
    context.docstring = command.pre .. [[(POSTFIX_MATCH|VISUAL|<1>)]] .. command.post
    context.match_pattern = [[[%w%.%_%-%"%']*$]]
    j, _ = string.find(command.pre, context.trig)
    if j == 2 then
        context.trigEngine = "ecma"
        context.trig = "(?<!\\\\)" .. "(" .. context.trig .. ")"
        context.hidden = true
    end
    return postfix(context, {d(1, generate_postfix_dynamicnode, {}, { user_args = {command.pre, command.post} })}, opts)
end

return M
