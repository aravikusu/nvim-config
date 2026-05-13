-- enable build-in undotree on startup
vim.cmd.packadd("nvim.undotree")

-- show spaces, tabs, leading whitespace
vim.o.list = true
vim.o.listchars = 'tab:» ,lead:•,trail:•'
vim.g.mapleader = " "

-- tab spacing
vim.opt.tabstop = 4
vim.opt.softtabstop= 4
vim.opt.shiftwidth = 4

-- hide --INSERT-- etc, since lunaline handles it
vim.opt.showmode = false
vim.expandtab = true

-- keybinds
vim.keymap.set("n", "<A-Left>", vim.cmd.BufferLineCyclePrev, { desc = "Bufeline tab left"} )
vim.keymap.set("n", "<A-Right>", vim.cmd.BufferLineCycleNext, { desc = "Bufferline tab right"} )
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Go back" })
vim.keymap.set("n", "<leader>u", vim.cmd.Undotree, { desc = "Open Undotree" })
vim.keymap.set("n", "<leader>e", vim.cmd.Neotree, { desc = "Open Neo-tree" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostics" })

vim.keymap.set({"n", "v"}, "<leader>y", '"+y', { desc = "Copy to system clipboard" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste from system clipboard" })

-- godot server
local projectfile = vim.fn.getcwd() .. '/project.godot'
if vim.fn.filereadable(projectfile) == 1 then
	vim.fn.serverstart './godothost'
end
