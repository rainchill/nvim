## 安装
ubuntu举例

更新 `sudo apt update`

安装 python `sudo apt install python` （ 3.8 3.10 … )

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
| 按键/命令          | 说明              |
| :---------------: | :---------------: |
| `gcc`            | noremal模式下注释 |
| `gc`             | visual模式下注释  |
| `<c-h/j/k/l>`    | 窗口移动          |
| `<c-g>`          | 打开关闭终端      |
| `:ToggleTerm id` | 打开标号id的终端  |
