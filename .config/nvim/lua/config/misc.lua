local opts = {
	guifont = 'JetBrainsMono Nerd Font:h10',

	mouse = 'a',
	number = true,
	relativenumber = true
}

for opt, value in pairs(opts) do
	vim.o[opt] = value
end
