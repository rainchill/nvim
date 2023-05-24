-- 自动安装
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- 保存此文件自动更新安装软件
-- 注意PackerCompile改成了PackerSync
-- plugins.lua改成了plugins-setup.lua，适应本地文件名字
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'                                  -- 主题
    use 'Mofiqul/vscode.nvim'
    use { "ellisonleao/gruvbox.nvim" }                           -- 主题
    use { 'nvim-lualine/lualine.nvim',                           -- 状态栏
        requires = { 'nvim-tree/nvim-web-devicons', opt = true } -- 状态栏图标
    }
    use {
        'nvim-tree/nvim-tree.lua',         -- 文档树
        requires = {
            'nvim-tree/nvim-web-devicons', -- 文档树图标
        },
        config = function()
            require("nvim-tree").setup {}
        end
    }
    use { "nvim-tree/nvim-web-devicons" }
    use("christoomey/vim-tmux-navigator")           -- 用ctl-hjkl来定位窗口
    use("nvim-treesitter/nvim-treesitter")          -- 语法高亮
    use("p00f/nvim-ts-rainbow")                     -- 配合treesitter，不同括号颜色区分
    use { 'neoclide/coc.nvim', branch = 'release' } -- coc.nvim
    -- use {                                           -- 括号匹配
    --  "windwp/nvim-autopairs",
    --  config = function() require("nvim-autopairs").setup {} end
    -- }
    -- using packer.nvim
    use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }
    -- use { 'mhartington/formatter.nvim' }

    ---------------------------dap调试--------------
    -- vimspector
    -- "puremourning/vimspector",
    -- use "ravenxrz/DAPInstall.nvim"
    use { "mfussenegger/nvim-dap" }

    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate" -- :MasonUpdate updates registry contents
    }
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
    use "theHamsta/nvim-dap-virtual-text"
    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }
    -- 缩进
    use "lukas-reineke/indent-blankline.nvim"
    -- 注释
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- 代码折叠
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

    -- 模糊查找
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- 启动界面
    use { 'glepnir/dashboard-nvim' }

    -- markdown 预览
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- 加速 jk
    use { 'rainbowhxch/accelerated-jk.nvim' }

    -- scrollbar
    use 'dstein64/nvim-scrollview'

    -- -- 平滑滚动
    use 'karb94/neoscroll.nvim'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
