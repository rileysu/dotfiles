local default_keybinding_opt = { noremap = true, silent = true }

local insert_bindings = {
}

local normal_bindings = {
	['<C-n>'] = ':NvimTreeToggle<CR>'
}

local term_bindings = {
}

local visual_bindings = {
}

local visual_block_bindings = {
}

local command_bindings = {
}

for k, v in pairs(insert_bindings) do
	vim.keymap.set('i', k, v, default_keybinding_opt)
end

for k, v in pairs(normal_bindings) do
	vim.keymap.set('n', k, v, default_keybinding_opt)
end

for k, v in pairs(term_bindings) do
	vim.keymap.set('t', k, v, default_keybinding_opt)
end

for k, v in pairs(visual_bindings) do
	vim.keymap.set('v', k, v, default_keybinding_opt)
end

for k, v in pairs(visual_block_bindings) do
	vim.keymap.set('x', k, v, default_keybinding_opt)
end

for k, v in pairs(command_bindings) do
	vim.keymap.set('c', k, v, default_keybinding_opt)
end
