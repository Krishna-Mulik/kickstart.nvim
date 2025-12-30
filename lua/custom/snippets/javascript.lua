local h = require 'custom.snippets.helpers'
local s, t, i = h.s, h.t, h.i
local ls = require 'luasnip'

local snippets = {
  s('expfn', {
    t '(req, res) => {',
    t { '', '  ' },
    i(0),
    t { '', '}' },
  }),
}

ls.add_snippets('javascript', snippets)
ls.add_snippets('typescript', snippets)
