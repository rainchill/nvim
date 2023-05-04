## 介绍

启动界面

<img title="" src="./doc/img/dashborad.png" alt="" data-align="center">

目前具备功能

- 代码提示

- 文件资源管理器

- 顶部buffer

- 底部状态栏

- 鼠标

- 代码调试

- 呼出终端

- 代码块折叠

- 启动界面

- ... ...

## 安装

#### linux

更新源

安装 python（ 3.8 3.10 … )

安装 node yarn

删除旧配置

```
rm -rf ~/.config/nvim
rm -rf ~/.cache/nvim
rm -rf ~/.local/share/nvim
```

`cd ~/.config`

`git clone https://github.com/rainchill/nvim.git`

`nvim nvim`

打开 plugins-setup.lua 安装插件

报错 pyx command，ultisnips... 安装 `pip install pynvim`

treesitter报错 保持 node 版本最新

保持nvim版本 > 0.8

`:MasonUpdate`

`:Masonc`

选择 cpptools  输入i安装

修改tap/cpp.lua 的command目录 必须是绝对目录 不然会报错

此时全部功能配置完毕了

## 快捷键

| 按键/命令            | 说明                |
|:----------------:|:-----------------:|
| `gcc`            | noremal模式下注释      |
| `gc`             | visual模式下注释       |
| `<c-h/j/k/l>`    | 窗口移动              |
| `<c-g>`          | 打开关闭终端            |
| `:ToggleTerm id` | 打开标号id的终端         |
| `gd`             | 跳转到代码定义           |
| `<c-i>`          | 前往下一个文件光标位置       |
| `<c-o>`          | 返回上一个文件光标位置       |
| `<leader>ff`     | telescope查找文件     |
| `<leader>nh`     | 取消查找高亮            |
| `<leader>e`      | 呼出nvim-tree       |
| `<leader>rn`     | 批量修改变量名           |
| `zz`             | 所在行居中             |
| `9`              | 跳转到行尾             |
| `S`              | 保存当前文件            |
| `Q`              | 不保存地退出当前文件        |
| `<c-p>`          | 切换到buffeline前一个文件 |
| `<c-n>`          | 切换到buffeline后一个文件 |
| `<c-a>`          | noremal模式全选       |
| `<c-g>`          | 呼出终端              |
