local settings = {
	number = { type = "boolean" },
	background = { transparent = true },
}

_G.toggle_setting = function(name)
	local setting = settings[name]
	if not setting then
		print("invalid setting to toggle")
		return
	end
	if name == "background" then
		local normal_hl = vim.api.nvim_get_hl_by_name("Normal", true)

		if not original_bg then
			-- guarda a cor original do fundo
			original_bg = normal_hl.background
		end

		if transparent_toggle then
			-- volta para a cor original
			local bg = original_bg and string.format("#%06x", original_bg) or "NONE"
			vim.cmd("highlight Normal guibg=" .. bg .. " ctermbg=" .. bg)
			print("Fundo transparente desativado")
		else
			-- deixa transparente
			vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
			print("Fundo transparente ativado")
		end

		transparent_toggle = not transparent_toggle
        return
	end

	local scope = setting.scope or "global" -- por default global
	local current
	if scope == "buffer" then
		current = vim.bo[name]
		vim.bo[name] = not current
	elseif scope == "window" then
		current = vim.wo[name]
		vim.wo[name] = not current
	else
		current = vim.o[name]
		vim.o[name] = not current
	end
	print(tostring(vim.o[name]))
end

local function selector()
	local options = {}
	for option, _ in pairs(settings) do
		table.insert(options, option)
	end
	local final_choice
	vim.schedule(function()
		vim.ui.select(options, {}, function(choice)
			if choice then
				final_choice = choice
				toggle_setting(final_choice)
			end
		end)
	end)
end

vim.keymap.set("n", "<leader>Vt", function()
	selector()
end, { noremap = true })
