vim.g.mapleader = " "
vim.g.tags = "/home/zyh/work/wtimer/tags"
local keymap = vim.keymap
----------------------- 插入模式 ----------------------- keymap.set("i", "jk", "<Esc>") --------------------- 视觉模式 -----------------------
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
----------------------- 正常模式 -----------------------
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

----------------------- 插件 -----------------------
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- 切换buffer
keymap.set("n", '<C-n>', ":bnext<CR>", { noremap = true });
keymap.set("n", '<C-p>', ":bprevious<CR>", { noremap = true });

keymap.set("n", "Q", ":q!<CR>")
keymap.set("n", "S", ":w<CR>", { noremap = true })
keymap.set("n", "<C-a>", "ggVG")

-- vscode debug 快捷键
keymap.set({ "i", "n", "v" }, "<F5>", "<cmd>lua require'dap'.continue()<CR>",
    { silent = true, noremap = true, buffer = bufnr })
keymap.set({ "i", "n", "v" }, "<F10>", "<cmd>lua require'dap'.step_over()<CR>",
    { silent = true, noremap = true, buffer = bufnr })
keymap.set({ "i", "n", "v" }, "<F11>", "<cmd>lua require'dap'.step_into()<CR>",
    { silent = true, noremap = true, buffer = bufnr })
keymap.set({ "i", "n", "v" }, "<F12>", "<cmd>lua require'dap'.step_over()<CR>",
    { silent = true, noremap = true, buffer = bufnr })
keymap.set({ "i", "n", "v" }, "<F9>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>",
    { silent = true, noremap = true, buffer = bufnr })

-- 剪切板
keymap.set("v", "y", "\"+y", { noremap = true })
keymap.set("v", "p", "\"+p", { noremap = true })

-- toggleterm
keymap.set({ "n", "t" }, "<A-\\>", "<Cmd>ToggleTerm direction=horizontal<CR>", { noremap = true, silent = true })
keymap.set({ "n", "t" }, "<A-d>", "<Cmd>ToggleTerm direction=float<CR>", { noremap = true, silent = true })

-- keymap.set("t", "<esc>", "<c-t><c-n>", {noremap = true, silent = true})
keymap.set("t", "<c-l>", "<Cmd> wincmd l<CR>", { noremap = true, silent = true })
keymap.set("t", "<c-h>", "<Cmd> wincmd h<CR>", { noremap = true, silent = true })
keymap.set("t", "<c-j>", "<Cmd> wincmd j<CR>", { noremap = true, silent = true })
keymap.set("t", "<c-k>", "<Cmd> wincmd k<CR>", { noremap = true, silent = true })

-- 移动
keymap.set("n", "[", "5k", { noremap = true, silent = true });
keymap.set("n", "]", "5j", { noremap = true, silent = true });

-- 注释
-- keymap.set("n", "<c-m>", "gcc", {noremap = true})

-- 模糊查找
-- keymap.set("n", "<leader>ff", "<Cmd>Telescope find_files<CR>", { noremap = true, silent = true })

-- keymap.set({ "n", "v" }, "<leader>9", "$", { noremap = true })

keymap.set("n", "<leader>lg", ":term lazygit<CR>", { noremap = true, silent = true })

-- accelerated-jk 加速 jk
vim.api.nvim_set_keymap('n', 'j', '<Plug>(accelerated_jk_gj)', {})
vim.api.nvim_set_keymap('n', 'k', '<Plug>(accelerated_jk_gk)', {})
