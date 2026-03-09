local M = {}
M.count = 0
local lualine = require("lualine")
local function main()
	M.prompt = M.opts.prompt or "First try count: "
	local function get_rep_seting()
		return M.prompt .. M.count
	end
	lualine.setup({
		sections = {
			lualine_z = {
				-- lualine.get_config().sections.lualine_z[1],
				get_rep_seting,
			},
		},
	})
end

local function subtract()
	if M.count - 1 < 0 then
		vim.notify("First try count is " .. M.count, vim.log.levels.INFO)
		return
	end
	M.count = M.count - 1
	vim.notify("Booo :( ", vim.log.levels.INFO)
end

local function add()
	M.count = M.count + 1
	vim.notify("First Try!", vim.log.levels.INFO)
end

M.setup = function(opts)
	M.opts = opts or {}
	local subtract_key = M.opts.add or "-f"
	vim.keymap.set("n", subtract_key, function()
		subtract()
	end, {})
	local add_key = M.opts.add or "+f"
	vim.keymap.set("n", add_key, function()
		add()
	end, {})
	main()
end
return M
