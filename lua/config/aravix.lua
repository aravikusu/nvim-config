vim.cmd.packadd("nvim.undotree")
vim.o.list = true
vim.o.listchars = 'tab:» ,lead:•,trail:•'
vim.g.mapleader = " "
vim.opt.tabstop = 4
vim.opt.softtabstop= 4
vim.opt.shiftwidth = 4
vim.opt.showmode = false
vim.expandtab = true
vim.keymap.set("n", "<leader>tl", vim.cmd.BufferLineCyclePrev, { desc = "Bufeline tab left"} )
vim.keymap.set("n", "<leader>tr", vim.cmd.BufferLineCycleNext, { desc = "Bufferline tab right"} )
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Go back" })
vim.keymap.set("n", "<leader>u", vim.cmd.Undotree, { desc = "Open Undotree" })
vim.keymap.set("n", "<leader>e", vim.cmd.Neotree, { desc = "Open Neo-tree" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostics" })

local projectfile = vim.fn.getcwd() .. '/project.godot'
if projectfile then
	vim.fn.serverstart './godothost'
end
