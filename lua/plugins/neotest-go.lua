if true then
	return {}
end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/neotest-go",
	},
	opts = function(_, opts)
		if not opts.adapters then
			opts.adapters = {}
		end

		-- Add the Go adapter
		local neotest_go = require("neotest-go")
		table.insert(opts.adapters, neotest_go)

		return opts
	end,
}
