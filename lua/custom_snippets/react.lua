local ls = require("luasnip") -- Load LuaSnip

-- Some utility functions
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node -- Function node to replicate values

-- Define the Redux slice snippet
ls.add_snippets("javascript", {
	s("reduxslice", {
		t({ "import { createSlice } from '@reduxjs/toolkit';", "", "export const " }),
		i(1, "sliceName"),
		t({ "Slice = createSlice({", '\tname: "name"' }),
		t({ ",", "\tinitialState: {", "\t\tcounter: 10" }),
		t({
			"",
			"\t},",
			"\treducers: {",
			"\t\tincrement: (state, /* action */) => {",
			"\t\t\tstate.counter += 1;",
			"\t\t},",
			"\t},",
			"});",
			"",
			"",
			"// Action creators are generated for each case reducer function",
			"export const { increment } = ",
		}),
		f(function(args)
			return args[1] -- This refers to the first insert node (sliceName)
		end, { 1 }),
		t({ "Slice.actions;" }),
	}),
})
