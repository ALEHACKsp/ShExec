## Intro / 介紹：
Windows built-in runas command not feed what you need? Try this simple script out!
You can run applications as maximium/minimum/hide with admin privilege easily.

一個簡單的小腳本，能以各種模式執行程式，最大化/最小化/隱藏視窗，並以管理員權限執行！

## Usage / 使用手冊：
```bash
ShExec.vbs "application" [/par:TestParameter] [/dir:TestDirectory] [/runas]
[/hide | /min | /max | /inactive | /mininactive | /current | /default]
```

## Example / 範例：
```bash
wscript ShExec.vbs cmd.exe /runas /max
```

## Screenshot / 截圖：

[![](https://github.com/vungsung/ShExec/blob/master/shexec.png?raw=true)](https://github.com/vungsung/ShExec/blob/master/shexec.png?raw=true)
