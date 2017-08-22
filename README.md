### 启动脚本（需要用到的东西在最下面的下载地址，包括本段代码）
```
@echo off 
echo Starting Nginx... 
cd C:/nginx-1.12.1 
start nginx
echo Starting PHP FastCGI... 
cd C:/Users/bxw74/Desktop
RunHiddenConsole.exe php-cgi.exe -b 127.0.0.1:9000 -c C:/php/php.ini
```
其中```cd C:/nginx-1.12.1 ``` 是进入nginx的目录以便使用nginx的命令，这里换成你的nginx目录，当然如果你在环境变量中配置了nginx的路径，那你大可不必执行这句话。下面的`cd C:/Users/bxw74/Desktop` 是为了可以找到RunHiddenConsole.exe，也就是说其实是进入了RunHiddenConsole.exe所在的目录，而还有一点需要注意的是，你需要让PHP的目录写在环境变量中，如果在命令提示符的任何路径都可以使用php -v命令说明已经加入环境变量中，如果没有，可以参考这个中安装PHP的部分
http://blog.csdn.net/qq_32457355/article/details/77479579

### 关闭脚本
```
@echo off
echo Stopping nginx...
taskkill /F /IM nginx.exe > nul
echo Stopping PHP FastCGI...
taskkill /F /IM php-cgi.exe > nul
exit
```

上述两个脚本保存为.bat文件，即可双击执行。

### 开机启动
把上述的两个启动文件创建快捷方式，把快捷方式拖到以下目录（有隐藏目录，需要开启显示隐藏目录才可以看到，或者直接在地址栏输入进入）
`C:\Users\vien\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`
注：这里的vien换成你的用户名即可

