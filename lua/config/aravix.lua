-- enable build-in undotree on startup
vim.cmd.packadd("nvim.undotree")

-- show spaces, tabs, leading whitespace
vim.o.list = true
vim.o.listchars = 'tab:» ,lead:•,trail:•'
vim.g.mapleader = " "

-- tab spacing
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- hide --INSERT-- etc, since lunaline handles it
vim.opt.showmode = false
vim.opt.expandtab = true

-- diagnostic
vim.diagnostic.config({ jump = {float = true }})

-- keybinds
vim.keymap.set("n", "<A-Left>", vim.cmd.BufferLineCyclePrev, { desc = "Bufeline tab left" })
vim.keymap.set("n", "<A-Right>", vim.cmd.BufferLineCycleNext, { desc = "Bufferline tab right" })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Go back" })
vim.keymap.set("n", "<leader>u", vim.cmd.Undotree, { desc = "Open Undotree" })
vim.keymap.set("n", "<leader>e", vim.cmd.Neotree, { desc = "Open Neo-tree" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostics" })

vim.keymap.set({"n", "v"}, "<leader>y", '"+y', { desc = "Copy to system clipboard" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste from system clipboard" })

-- mini.bufremove
vim.keymap.set("n", "<leader>bd", function() require('mini.bufremove').delete(0, false) end, { desc = "Close buffer" })

-- bufferline pin
vim.keymap.set("n", "<leader>bp", vim.cmd.BufferLineTogglePin, { desc = "Pin/unpin buffer" })

-- nvim-dap
vim.keymap.set("n", "<F5>", function() require('dap').continue() end, { desc = "DAP continue/start" })
vim.keymap.set("n", "<F9>", function() require('dap').toggle_breakpoint() end, { desc = "DAP toggle breakpoint" })
vim.keymap.set("n", "<F10>", function() require('dap').step_over() end, { desc = "DAP step over" })
vim.keymap.set("n", "<F11>", function() require('dap').step_into() end, { desc = "DAP step into" })
vim.keymap.set("n", "<F12>", function() require('dap').step_out() end, { desc = "DAP step out" })
vim.keymap.set("n", "<leader>du", function() require('dapui').toggle() end, { desc = "DAP toggle UI" })
vim.keymap.set("n", "<leader>dr", function() require('dap').repl.open() end, { desc = "DAP open REPL" })

-- godot server
local projectfile = vim.fn.getcwd() .. '/project.godot'
if vim.fn.filereadable(projectfile) == 1 then
	vim.fn.serverstart './godothost'
end
